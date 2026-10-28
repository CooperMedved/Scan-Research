/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : U-2022.12-SP6
// Date      : Tue Oct  6 14:25:09 2026
/////////////////////////////////////////////////////////////


module b09 ( reset, clock, x, y, scan_in, scan_out, scan_enable );
  input reset, clock, x, scan_in, scan_enable;
  output y, scan_out;
  wire   n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124;
  wire   [1:0] stato;
  wire   [8:0] d_in;
  wire   [7:0] d_out;
  wire   [7:0] old;

  SAEDRVT14_FSDPRBQ_V2LP_1 y_reg ( .D(n55), .SI(n46), .SE(n46), .CK(clock), 
        .RD(n45), .Q(y) );
  SAEDRVT14_FSDPRBQ_V2LP_1 old_reg_3_ ( .D(n60), .SI(n46), .SE(n46), .CK(clock), .RD(n124), .Q(old[3]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 d_out_reg_0_ ( .D(n47), .SI(n46), .SE(n46), .CK(
        clock), .RD(n45), .Q(d_out[0]) );
  SAEDRVT14_INV_0P5 U78 ( .A(reset), .X(n45) );
  SAEDRVT14_BUF_S_0P5 U79 ( .A(n45), .X(n124) );
  SAEDRVT14_INV_0P5 U80 ( .A(stato[1]), .X(n123) );
  SAEDRVT14_NR2_1 U81 ( .A1(d_in[0]), .A2(n123), .X(n104) );
  SAEDRVT14_INV_0P5 U82 ( .A(stato[0]), .X(n116) );
  SAEDRVT14_INV_0P5 U83 ( .A(d_in[0]), .X(n121) );
  SAEDRVT14_NR2_1 U84 ( .A1(n116), .A2(n121), .X(n115) );
  SAEDRVT14_INV_0P5 U85 ( .A(old[1]), .X(n92) );
  SAEDRVT14_INV_0P5 U86 ( .A(d_in[1]), .X(n99) );
  SAEDRVT14_OAI22_0P5 U87 ( .A1(n92), .A2(d_in[2]), .B1(n99), .B2(old[0]), .X(
        n75) );
  SAEDRVT14_AO221_0P5 U88 ( .A1(n92), .A2(d_in[2]), .B1(old[0]), .B2(n99), .C(
        n75), .X(n83) );
  SAEDRVT14_EO2_V1_0P75 U89 ( .A1(old[2]), .A2(d_in[3]), .X(n81) );
  SAEDRVT14_EO2_V1_0P75 U90 ( .A1(old[3]), .A2(d_in[4]), .X(n80) );
  SAEDRVT14_INV_0P5 U91 ( .A(old[6]), .X(n95) );
  SAEDRVT14_INV_0P5 U92 ( .A(d_in[8]), .X(n102) );
  SAEDRVT14_OAI22_0P5 U93 ( .A1(n95), .A2(d_in[7]), .B1(n102), .B2(old[7]), 
        .X(n76) );
  SAEDRVT14_AO221_0P5 U94 ( .A1(n95), .A2(d_in[7]), .B1(old[7]), .B2(n102), 
        .C(n76), .X(n79) );
  SAEDRVT14_INV_0P5 U95 ( .A(old[4]), .X(n94) );
  SAEDRVT14_INV_0P5 U96 ( .A(old[5]), .X(n86) );
  SAEDRVT14_OAI22_0P5 U97 ( .A1(n94), .A2(d_in[5]), .B1(n86), .B2(d_in[6]), 
        .X(n77) );
  SAEDRVT14_AO221_0P5 U98 ( .A1(n94), .A2(d_in[5]), .B1(d_in[6]), .B2(n86), 
        .C(n77), .X(n78) );
  SAEDRVT14_OR4_1 U99 ( .A1(n81), .A2(n80), .A3(n79), .A4(n78), .X(n82) );
  SAEDRVT14_OAI21_0P5 U100 ( .A1(n83), .A2(n82), .B(d_in[0]), .X(n100) );
  SAEDRVT14_ND2_CDC_0P5 U101 ( .A1(stato[1]), .A2(n100), .X(n84) );
  SAEDRVT14_OAI22_0P5 U102 ( .A1(n104), .A2(n115), .B1(n116), .B2(n84), .X(n73) );
  SAEDRVT14_INV_0P5 U103 ( .A(d_in[3]), .X(n87) );
  SAEDRVT14_INV_0P5 U104 ( .A(n115), .X(n122) );
  SAEDRVT14_OAI21_0P5 U105 ( .A1(stato[0]), .A2(stato[1]), .B(n122), .X(n97)
         );
  SAEDRVT14_NR2_1 U106 ( .A1(n87), .A2(n97), .X(n66) );
  SAEDRVT14_NR2_1 U107 ( .A1(n99), .A2(n97), .X(n64) );
  SAEDRVT14_INV_0P5 U108 ( .A(d_in[4]), .X(n89) );
  SAEDRVT14_NR2_1 U109 ( .A1(n89), .A2(n97), .X(n67) );
  SAEDRVT14_INV_0P5 U110 ( .A(d_in[2]), .X(n91) );
  SAEDRVT14_NR2_1 U111 ( .A1(n91), .A2(n97), .X(n65) );
  SAEDRVT14_INV_0P5 U112 ( .A(d_in[5]), .X(n93) );
  SAEDRVT14_NR2_1 U113 ( .A1(n93), .A2(n97), .X(n68) );
  SAEDRVT14_NR2_1 U114 ( .A1(n102), .A2(n97), .X(n71) );
  SAEDRVT14_INV_0P5 U115 ( .A(d_in[6]), .X(n85) );
  SAEDRVT14_NR2_1 U116 ( .A1(n85), .A2(n97), .X(n69) );
  SAEDRVT14_INV_0P5 U117 ( .A(d_in[7]), .X(n106) );
  SAEDRVT14_NR2_1 U118 ( .A1(n106), .A2(n97), .X(n70) );
  SAEDRVT14_OAI22_0P5 U119 ( .A1(n86), .A2(n97), .B1(n85), .B2(n122), .X(n58)
         );
  SAEDRVT14_INV_0P5 U120 ( .A(old[2]), .X(n88) );
  SAEDRVT14_OAI22_0P5 U121 ( .A1(n88), .A2(n97), .B1(n87), .B2(n122), .X(n61)
         );
  SAEDRVT14_INV_0P5 U122 ( .A(old[3]), .X(n90) );
  SAEDRVT14_OAI22_0P5 U123 ( .A1(n90), .A2(n97), .B1(n89), .B2(n122), .X(n60)
         );
  SAEDRVT14_OAI22_0P5 U124 ( .A1(n92), .A2(n97), .B1(n91), .B2(n122), .X(n62)
         );
  SAEDRVT14_OAI22_0P5 U125 ( .A1(n94), .A2(n97), .B1(n93), .B2(n122), .X(n59)
         );
  SAEDRVT14_OAI22_0P5 U126 ( .A1(n95), .A2(n97), .B1(n106), .B2(n122), .X(n57)
         );
  SAEDRVT14_INV_0P5 U127 ( .A(old[7]), .X(n96) );
  SAEDRVT14_OAI22_0P5 U128 ( .A1(n102), .A2(n122), .B1(n96), .B2(n97), .X(n56)
         );
  SAEDRVT14_INV_0P5 U129 ( .A(old[0]), .X(n98) );
  SAEDRVT14_OAI22_0P5 U130 ( .A1(n99), .A2(n122), .B1(n98), .B2(n97), .X(n63)
         );
  SAEDRVT14_NR2_1 U131 ( .A1(n116), .A2(n100), .X(n117) );
  SAEDRVT14_AOI21_0P75 U132 ( .A1(n123), .A2(d_in[0]), .B(n117), .X(n101) );
  SAEDRVT14_OAI21_0P5 U133 ( .A1(d_in[0]), .A2(stato[0]), .B(n101), .X(n103)
         );
  SAEDRVT14_ND2_CDC_0P5 U134 ( .A1(stato[0]), .A2(n103), .X(n108) );
  SAEDRVT14_INV_0P5 U135 ( .A(d_out[7]), .X(n105) );
  SAEDRVT14_OAI22_0P5 U136 ( .A1(n102), .A2(n108), .B1(n103), .B2(n105), .X(
        n54) );
  SAEDRVT14_INV_0P5 U137 ( .A(n103), .X(n110) );
  SAEDRVT14_ND2_CDC_0P5 U138 ( .A1(n104), .A2(n116), .X(n109) );
  SAEDRVT14_OAI22_0P5 U139 ( .A1(n106), .A2(n108), .B1(n105), .B2(n109), .X(
        n107) );
  SAEDRVT14_AO21_U_0P5 U140 ( .A1(n110), .A2(d_out[6]), .B(n107), .X(n53) );
  SAEDRVT14_INV_0P5 U141 ( .A(n108), .X(n111) );
  SAEDRVT14_INV_0P5 U142 ( .A(n109), .X(n112) );
  SAEDRVT14_AO222_1 U143 ( .A1(d_in[1]), .A2(n111), .B1(n110), .B2(d_out[0]), 
        .C1(d_out[1]), .C2(n112), .X(n47) );
  SAEDRVT14_AO222_1 U144 ( .A1(d_in[6]), .A2(n111), .B1(n110), .B2(d_out[5]), 
        .C1(d_out[6]), .C2(n112), .X(n52) );
  SAEDRVT14_AO222_1 U145 ( .A1(d_in[2]), .A2(n111), .B1(n110), .B2(d_out[1]), 
        .C1(d_out[2]), .C2(n112), .X(n48) );
  SAEDRVT14_AO222_1 U146 ( .A1(d_in[3]), .A2(n111), .B1(n110), .B2(d_out[2]), 
        .C1(d_out[3]), .C2(n112), .X(n49) );
  SAEDRVT14_AO222_1 U147 ( .A1(d_in[4]), .A2(n111), .B1(n110), .B2(d_out[3]), 
        .C1(d_out[4]), .C2(n112), .X(n50) );
  SAEDRVT14_AO222_1 U148 ( .A1(d_in[5]), .A2(n111), .B1(n110), .B2(d_out[4]), 
        .C1(d_out[5]), .C2(n112), .X(n51) );
  SAEDRVT14_NR2_1 U149 ( .A1(d_in[0]), .A2(y), .X(n114) );
  SAEDRVT14_ND2_CDC_0P5 U150 ( .A1(stato[0]), .A2(n123), .X(n120) );
  SAEDRVT14_AOI21_0P75 U151 ( .A1(n112), .A2(d_out[0]), .B(n117), .X(n113) );
  SAEDRVT14_OAI21_0P5 U152 ( .A1(n114), .A2(n120), .B(n113), .X(n55) );
  SAEDRVT14_OAI22_0P5 U153 ( .A1(stato[1]), .A2(n116), .B1(n123), .B2(n115), 
        .X(n118) );
  SAEDRVT14_AOI21_0P75 U154 ( .A1(x), .A2(n118), .B(n117), .X(n119) );
  SAEDRVT14_OAI21_0P5 U155 ( .A1(n121), .A2(n120), .B(n119), .X(n72) );
  SAEDRVT14_ND2_CDC_0P5 U156 ( .A1(n123), .A2(n122), .X(n74) );
  SAEDRVT14_FSDPRBQ_V2LP_1 stato_reg_1_ ( .D(n74), .SI(n46), .SE(n46), .CK(
        clock), .RD(n124), .Q(stato[1]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 stato_reg_0_ ( .D(n73), .SI(n46), .SE(n46), .CK(
        clock), .RD(n124), .Q(stato[0]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 d_in_reg_7_ ( .D(n71), .SI(n46), .SE(n46), .CK(
        clock), .RD(n45), .Q(d_in[7]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 d_in_reg_6_ ( .D(n70), .SI(n46), .SE(n46), .CK(
        clock), .RD(n45), .Q(d_in[6]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 d_in_reg_5_ ( .D(n69), .SI(n46), .SE(n46), .CK(
        clock), .RD(n45), .Q(d_in[5]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 d_in_reg_4_ ( .D(n68), .SI(n46), .SE(n46), .CK(
        clock), .RD(n45), .Q(d_in[4]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 d_in_reg_3_ ( .D(n67), .SI(n46), .SE(n46), .CK(
        clock), .RD(n45), .Q(d_in[3]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 d_in_reg_2_ ( .D(n66), .SI(n46), .SE(n46), .CK(
        clock), .RD(n124), .Q(d_in[2]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 d_in_reg_1_ ( .D(n65), .SI(n46), .SE(n46), .CK(
        clock), .RD(n124), .Q(d_in[1]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 d_in_reg_0_ ( .D(n64), .SI(n46), .SE(n46), .CK(
        clock), .RD(n124), .Q(d_in[0]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 d_out_reg_7_ ( .D(n54), .SI(n46), .SE(n46), .CK(
        clock), .RD(n124), .Q(d_out[7]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 old_reg_6_ ( .D(n57), .SI(n46), .SE(n46), .CK(clock), .RD(n124), .Q(old[6]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 old_reg_5_ ( .D(n58), .SI(n46), .SE(n46), .CK(clock), .RD(n124), .Q(old[5]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 old_reg_4_ ( .D(n59), .SI(n46), .SE(n46), .CK(clock), .RD(n124), .Q(old[4]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 old_reg_2_ ( .D(n61), .SI(n46), .SE(n46), .CK(clock), .RD(n124), .Q(old[2]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 old_reg_1_ ( .D(n62), .SI(n46), .SE(n46), .CK(clock), .RD(n124), .Q(old[1]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 old_reg_7_ ( .D(n56), .SI(n46), .SE(n46), .CK(clock), .RD(n124), .Q(old[7]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 old_reg_0_ ( .D(n63), .SI(n46), .SE(n46), .CK(clock), .RD(n124), .Q(old[0]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 d_out_reg_6_ ( .D(n53), .SI(n46), .SE(n46), .CK(
        clock), .RD(n124), .Q(d_out[6]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 d_out_reg_3_ ( .D(n50), .SI(n46), .SE(n46), .CK(
        clock), .RD(n45), .Q(d_out[3]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 d_out_reg_2_ ( .D(n49), .SI(n46), .SE(n46), .CK(
        clock), .RD(n45), .Q(d_out[2]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 d_out_reg_4_ ( .D(n51), .SI(n46), .SE(n46), .CK(
        clock), .RD(n45), .Q(d_out[4]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 d_out_reg_1_ ( .D(n48), .SI(n46), .SE(n46), .CK(
        clock), .RD(n45), .Q(d_out[1]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 d_out_reg_5_ ( .D(n52), .SI(n46), .SE(n46), .CK(
        clock), .RD(n124), .Q(d_out[5]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 d_in_reg_8_ ( .D(n72), .SI(n46), .SE(n46), .CK(
        clock), .RD(n45), .Q(d_in[8]) );
  SAEDRVT14_TIE0_V1_2 U77 ( .X(n46) );
endmodule

