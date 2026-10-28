/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : U-2022.12-SP6
// Date      : Tue Oct  6 13:47:04 2026
/////////////////////////////////////////////////////////////


module s27 ( CK, G0, G1, G17, G2, G3, scan_in, scan_out, scan_enable );
  input CK, G0, G1, G2, G3, scan_in, scan_enable;
  output G17, scan_out;
  wire   G10, G11, G13, n4, n6, n9, n10, n11;

  SAEDRVT14_FSDPQB_V2_0P5 DFF_2_Q_reg ( .D(G13), .SI(n4), .SE(scan_enable), 
        .CK(CK), .QN(scan_out) );
  SAEDRVT14_FSDPQB_V2LP_1 DFF_1_Q_reg ( .D(G11), .SI(n6), .SE(scan_enable), 
        .CK(CK), .QN(n4) );
  SAEDRVT14_INV_0P5 U10 ( .A(G3), .X(n9) );
  SAEDRVT14_ND2B_U_0P5 U11 ( .A(G1), .B(scan_out), .X(n11) );
  SAEDRVT14_OAI22_0P5 U12 ( .A1(G0), .A2(n4), .B1(n9), .B2(n11), .X(n10) );
  SAEDRVT14_ND2_CDC_0P5 U13 ( .A1(n6), .A2(n10), .X(G17) );
  SAEDRVT14_INV_0P5 U14 ( .A(G17), .X(G11) );
  SAEDRVT14_AN2_MM_0P5 U15 ( .A1(G0), .A2(G17), .X(G10) );
  SAEDRVT14_FSDPQB_V2LP_1 DFF_0_Q_reg ( .D(G10), .SI(scan_in), .SE(scan_enable), .CK(CK), .QN(n6) );
  SAEDRVT14_NR2B_U_0P5 U9 ( .A(n11), .B(G2), .X(G13) );
endmodule

