/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : U-2022.12-SP6
// Date      : Tue Oct  6 14:22:06 2026
/////////////////////////////////////////////////////////////


module b03 ( clock, reset, request1, request2, request3, request4, grant_o, 
        scan_in, scan_out, scan_enable );
  output [3:0] grant_o;
  input clock, reset, request1, request2, request3, request4, scan_in,
         scan_enable;
  output scan_out;
  wire   ru1, fu1, ru2, fu2, ru3, fu3, ru4, fu4, N70, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97;
  wire   [1:0] stato;
  wire   [2:0] coda0;
  wire   [2:0] coda1;
  wire   [2:0] coda2;
  wire   [2:0] coda3;
  wire   [3:0] grant;

  SAEDRVT14_FSDPRBQ_V2_1 stato_reg_0_ ( .D(n60), .SI(n31), .SE(n31), .CK(clock), .RD(n97), .Q(stato[0]) );
  SAEDRVT14_FSDPRBQ_V2_1 stato_reg_1_ ( .D(N70), .SI(n31), .SE(n31), .CK(clock), .RD(n30), .Q(stato[1]) );
  SAEDRVT14_FSDPRBQ_V2_1 coda1_reg_0_ ( .D(n50), .SI(n31), .SE(n31), .CK(clock), .RD(n30), .Q(coda1[0]) );
  SAEDRVT14_FSDPRBQ_V2_1 coda2_reg_0_ ( .D(n59), .SI(n31), .SE(n31), .CK(clock), .RD(n30), .Q(coda2[0]) );
  SAEDRVT14_FSDPRBQ_V2_1 coda3_reg_0_ ( .D(n56), .SI(n31), .SE(n31), .CK(clock), .RD(n30), .Q(coda3[0]) );
  SAEDRVT14_FSDPRBQ_V2_1 coda0_reg_0_ ( .D(n53), .SI(n31), .SE(n31), .CK(clock), .RD(n30), .Q(coda0[0]) );
  SAEDRVT14_FSDPRBQ_V2_1 coda1_reg_1_ ( .D(n49), .SI(n31), .SE(n31), .CK(clock), .RD(n30), .Q(coda1[1]) );
  SAEDRVT14_FSDPRBQ_V2_1 coda2_reg_1_ ( .D(n58), .SI(n31), .SE(n31), .CK(clock), .RD(n97), .Q(coda2[1]) );
  SAEDRVT14_FSDPRBQ_V2_1 coda3_reg_1_ ( .D(n55), .SI(n31), .SE(n31), .CK(clock), .RD(n97), .Q(coda3[1]) );
  SAEDRVT14_FSDPRBQ_V2_1 coda0_reg_1_ ( .D(n52), .SI(n31), .SE(n31), .CK(clock), .RD(n97), .Q(coda0[1]) );
  SAEDRVT14_FSDPRBQ_V2_1 coda1_reg_2_ ( .D(n48), .SI(n31), .SE(n31), .CK(clock), .RD(n97), .Q(coda1[2]) );
  SAEDRVT14_FSDPRBQ_V2_1 coda2_reg_2_ ( .D(n57), .SI(n31), .SE(n31), .CK(clock), .RD(n97), .Q(coda2[2]) );
  SAEDRVT14_FSDPRBQ_V2_1 coda3_reg_2_ ( .D(n54), .SI(n31), .SE(n31), .CK(clock), .RD(n97), .Q(coda3[2]) );
  SAEDRVT14_FSDPRBQ_V2_1 coda0_reg_2_ ( .D(n51), .SI(n31), .SE(n31), .CK(clock), .RD(n97), .Q(coda0[2]) );
  SAEDRVT14_FSDPRBQ_V2_1 ru2_reg ( .D(n45), .SI(n31), .SE(n31), .CK(clock), 
        .RD(n97), .Q(ru2) );
  SAEDRVT14_FSDPRBQ_V2_1 fu2_reg ( .D(n44), .SI(n31), .SE(n31), .CK(clock), 
        .RD(n97), .Q(fu2) );
  SAEDRVT14_FSDPRBQ_V2_1 ru3_reg ( .D(n43), .SI(n31), .SE(n31), .CK(clock), 
        .RD(n97), .Q(ru3) );
  SAEDRVT14_FSDPRBQ_V2_1 fu3_reg ( .D(n42), .SI(n31), .SE(n31), .CK(clock), 
        .RD(n97), .Q(fu3) );
  SAEDRVT14_FSDPRBQ_V2_1 ru4_reg ( .D(n41), .SI(n31), .SE(n31), .CK(clock), 
        .RD(n97), .Q(ru4) );
  SAEDRVT14_FSDPRBQ_V2_1 fu4_reg ( .D(n40), .SI(n31), .SE(n31), .CK(clock), 
        .RD(n97), .Q(fu4) );
  SAEDRVT14_FSDPRBQ_V2_1 grant_reg_3_ ( .D(n39), .SI(n31), .SE(n31), .CK(clock), .RD(n30), .Q(grant[3]) );
  SAEDRVT14_FSDPRBQ_V2_1 grant_reg_2_ ( .D(n37), .SI(n31), .SE(n31), .CK(clock), .RD(n30), .Q(grant[2]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 grant_o_reg_3_ ( .D(n38), .SI(n31), .SE(n31), .CK(
        clock), .RD(n30), .Q(grant_o[3]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 grant_o_reg_2_ ( .D(n36), .SI(n31), .SE(n31), .CK(
        clock), .RD(n30), .Q(grant_o[2]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 grant_o_reg_1_ ( .D(n34), .SI(n31), .SE(n31), .CK(
        clock), .RD(n30), .Q(grant_o[1]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 grant_o_reg_0_ ( .D(n32), .SI(n31), .SE(n31), .CK(
        clock), .RD(n30), .Q(grant_o[0]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 ru1_reg ( .D(n47), .SI(n31), .SE(n31), .CK(clock), 
        .RD(n97), .Q(ru1) );
  SAEDRVT14_FSDPRBQ_V2LP_1 grant_reg_0_ ( .D(n33), .SI(n31), .SE(n31), .CK(
        clock), .RD(n30), .Q(grant[0]) );
  SAEDRVT14_NR2_1 U65 ( .A1(n92), .A2(n91), .X(n94) );
  SAEDRVT14_INV_0P5 U66 ( .A(stato[0]), .X(n60) );
  SAEDRVT14_NR2_1 U67 ( .A1(stato[1]), .A2(n60), .X(N70) );
  SAEDRVT14_INV_0P5 U68 ( .A(ru3), .X(n69) );
  SAEDRVT14_MUXI2_U_0P5 U69 ( .D0(fu3), .D1(fu4), .S(n69), .X(n61) );
  SAEDRVT14_OAI21_0P5 U70 ( .A1(ru3), .A2(ru4), .B(n61), .X(n62) );
  SAEDRVT14_INV_0P5 U71 ( .A(ru2), .X(n83) );
  SAEDRVT14_OAI22_0P5 U72 ( .A1(ru2), .A2(n62), .B1(n83), .B2(fu2), .X(n63) );
  SAEDRVT14_OAI21_0P5 U73 ( .A1(ru1), .A2(n63), .B(N70), .X(n81) );
  SAEDRVT14_AOI21_0P75 U74 ( .A1(ru1), .A2(fu1), .B(n81), .X(n79) );
  SAEDRVT14_OR4_1 U75 ( .A1(fu3), .A2(fu4), .A3(fu2), .A4(fu1), .X(n64) );
  SAEDRVT14_AN3_0P5 U76 ( .A1(stato[1]), .A2(n60), .A3(n64), .X(n95) );
  SAEDRVT14_INV_0P5 U77 ( .A(n95), .X(n93) );
  SAEDRVT14_INV_0P5 U78 ( .A(n79), .X(n80) );
  SAEDRVT14_ND2_CDC_0P5 U79 ( .A1(n93), .A2(n80), .X(n86) );
  SAEDRVT14_INV_0P5 U80 ( .A(n86), .X(n78) );
  SAEDRVT14_AO222_1 U81 ( .A1(n79), .A2(coda1[2]), .B1(coda2[2]), .B2(n78), 
        .C1(n95), .C2(coda3[2]), .X(n57) );
  SAEDRVT14_AO222_1 U82 ( .A1(n79), .A2(coda1[1]), .B1(coda2[1]), .B2(n78), 
        .C1(n95), .C2(coda3[1]), .X(n58) );
  SAEDRVT14_AO222_1 U83 ( .A1(n79), .A2(coda1[0]), .B1(coda2[0]), .B2(n78), 
        .C1(n95), .C2(coda3[0]), .X(n59) );
  SAEDRVT14_INV_0P5 U84 ( .A(reset), .X(n30) );
  SAEDRVT14_BUF_S_0P5 U85 ( .A(n30), .X(n97) );
  SAEDRVT14_INV_0P5 U86 ( .A(N70), .X(n96) );
  SAEDRVT14_AO22_0P5 U87 ( .A1(n96), .A2(fu4), .B1(N70), .B2(ru4), .X(n40) );
  SAEDRVT14_INV_0P5 U88 ( .A(fu2), .X(n65) );
  SAEDRVT14_OAI22_0P5 U89 ( .A1(N70), .A2(n65), .B1(n96), .B2(n83), .X(n44) );
  SAEDRVT14_INV_0P5 U90 ( .A(fu3), .X(n66) );
  SAEDRVT14_OAI22_0P5 U91 ( .A1(N70), .A2(n66), .B1(n96), .B2(n69), .X(n42) );
  SAEDRVT14_AO22_0P5 U92 ( .A1(n96), .A2(fu1), .B1(N70), .B2(ru1), .X(n46) );
  SAEDRVT14_INV_0P5 U93 ( .A(coda0[0]), .X(n88) );
  SAEDRVT14_ND2_CDC_0P5 U94 ( .A1(n95), .A2(coda1[0]), .X(n67) );
  SAEDRVT14_OA31_1 U95 ( .A1(ru1), .A2(ru2), .A3(n81), .B(n67), .X(n68) );
  SAEDRVT14_OAI21_0P5 U96 ( .A1(n86), .A2(n88), .B(n68), .X(n53) );
  SAEDRVT14_AOI21_0P75 U97 ( .A1(n83), .A2(n69), .B(ru1), .X(n70) );
  SAEDRVT14_INV_0P5 U98 ( .A(coda0[2]), .X(n91) );
  SAEDRVT14_OAI22_0P5 U99 ( .A1(n80), .A2(n70), .B1(n91), .B2(n86), .X(n71) );
  SAEDRVT14_AO21_U_0P5 U100 ( .A1(n95), .A2(coda1[2]), .B(n71), .X(n51) );
  SAEDRVT14_INV_0P5 U101 ( .A(coda0[1]), .X(n92) );
  SAEDRVT14_INV_0P5 U102 ( .A(coda2[1]), .X(n72) );
  SAEDRVT14_OAI22_0P5 U103 ( .A1(n80), .A2(n92), .B1(n93), .B2(n72), .X(n73)
         );
  SAEDRVT14_AO21_U_0P5 U104 ( .A1(n78), .A2(coda1[1]), .B(n73), .X(n49) );
  SAEDRVT14_INV_0P5 U105 ( .A(coda2[0]), .X(n74) );
  SAEDRVT14_OAI22_0P5 U106 ( .A1(n80), .A2(n88), .B1(n93), .B2(n74), .X(n75)
         );
  SAEDRVT14_AO21_U_0P5 U107 ( .A1(n78), .A2(coda1[0]), .B(n75), .X(n50) );
  SAEDRVT14_INV_0P5 U108 ( .A(coda2[2]), .X(n76) );
  SAEDRVT14_OAI22_0P5 U109 ( .A1(n80), .A2(n91), .B1(n93), .B2(n76), .X(n77)
         );
  SAEDRVT14_AO21_U_0P5 U110 ( .A1(n78), .A2(coda1[2]), .B(n77), .X(n48) );
  SAEDRVT14_AO32_U_0P5 U111 ( .A1(coda3[0]), .A2(n80), .A3(n93), .B1(n79), 
        .B2(coda2[0]), .X(n56) );
  SAEDRVT14_AO32_U_0P5 U112 ( .A1(coda3[1]), .A2(n80), .A3(n93), .B1(n79), 
        .B2(coda2[1]), .X(n55) );
  SAEDRVT14_AO32_U_0P5 U113 ( .A1(coda3[2]), .A2(n80), .A3(n93), .B1(n79), 
        .B2(coda2[2]), .X(n54) );
  SAEDRVT14_OR2_MM_0P5 U114 ( .A1(n81), .A2(ru1), .X(n82) );
  SAEDRVT14_AOI21_0P75 U115 ( .A1(ru3), .A2(n83), .B(n82), .X(n84) );
  SAEDRVT14_AOI21_0P75 U116 ( .A1(coda1[1]), .A2(n95), .B(n84), .X(n85) );
  SAEDRVT14_OAI21_0P5 U117 ( .A1(n86), .A2(n92), .B(n85), .X(n52) );
  SAEDRVT14_MUX2_U_0P5 U118 ( .D0(ru1), .D1(request1), .S(n60), .X(n47) );
  SAEDRVT14_MUX2_U_0P5 U119 ( .D0(ru2), .D1(request2), .S(n60), .X(n45) );
  SAEDRVT14_MUX2_U_0P5 U120 ( .D0(ru3), .D1(request3), .S(n60), .X(n43) );
  SAEDRVT14_MUX2_U_0P5 U121 ( .D0(ru4), .D1(request4), .S(n60), .X(n41) );
  SAEDRVT14_NR2_1 U122 ( .A1(coda0[1]), .A2(n91), .X(n87) );
  SAEDRVT14_AO32_U_0P5 U123 ( .A1(n87), .A2(n95), .A3(n88), .B1(n93), .B2(
        grant[3]), .X(n39) );
  SAEDRVT14_MUX2_U_0P5 U124 ( .D0(grant[3]), .D1(grant_o[3]), .S(n96), .X(n38)
         );
  SAEDRVT14_NR2_1 U125 ( .A1(coda0[2]), .A2(n92), .X(n89) );
  SAEDRVT14_AO32_U_0P5 U126 ( .A1(n89), .A2(n95), .A3(n88), .B1(n93), .B2(
        grant[2]), .X(n37) );
  SAEDRVT14_MUX2_U_0P5 U127 ( .D0(grant[2]), .D1(grant_o[2]), .S(n96), .X(n36)
         );
  SAEDRVT14_NR2_1 U128 ( .A1(coda0[1]), .A2(coda0[2]), .X(n90) );
  SAEDRVT14_AO32_U_0P5 U129 ( .A1(coda0[0]), .A2(n95), .A3(n90), .B1(n93), 
        .B2(grant[1]), .X(n35) );
  SAEDRVT14_MUX2_U_0P5 U130 ( .D0(grant[1]), .D1(grant_o[1]), .S(n96), .X(n34)
         );
  SAEDRVT14_AO32_U_0P5 U131 ( .A1(coda0[0]), .A2(n95), .A3(n94), .B1(n93), 
        .B2(grant[0]), .X(n33) );
  SAEDRVT14_MUX2_U_0P5 U132 ( .D0(grant[0]), .D1(grant_o[0]), .S(n96), .X(n32)
         );
  SAEDRVT14_FSDPRBQ_V2LP_1 fu1_reg ( .D(n46), .SI(n31), .SE(n31), .CK(clock), 
        .RD(n97), .Q(fu1) );
  SAEDRVT14_FSDPRBQ_V2LP_1 grant_reg_1_ ( .D(n35), .SI(n31), .SE(n31), .CK(
        clock), .RD(n30), .Q(grant[1]) );
  SAEDRVT14_TIE0_V1_2 U64 ( .X(n31) );
endmodule

