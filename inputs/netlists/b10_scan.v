/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : U-2022.12-SP6
// Date      : Tue Oct  6 14:25:39 2026
/////////////////////////////////////////////////////////////


module b10 ( r_button, g_button, key, start, reset, test, cts, ctr, rts, rtr, 
        clock, v_in, v_out, scan_in, scan_out, scan_enable );
  input [3:0] v_in;
  output [3:0] v_out;
  input r_button, g_button, key, start, reset, test, rts, rtr, clock, scan_in,
         scan_enable;
  output cts, ctr, scan_out;
  wire   voto0, voto1, voto2, voto3, sign_3_, last_g, last_r, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176,
         n177, n178, n179, n180, n181, n182;
  wire   [3:0] stato;

  SAEDRVT14_FSDPRBQ_V2LP_1 cts_reg ( .D(n89), .SI(n83), .SE(n83), .CK(clock), 
        .RD(n82), .Q(cts) );
  SAEDRVT14_FSDPRBQ_V2LP_1 ctr_reg ( .D(n88), .SI(n83), .SE(n83), .CK(clock), 
        .RD(n82), .Q(ctr) );
  SAEDRVT14_FSDPRBQ_V2LP_1 v_out_reg_2_ ( .D(n87), .SI(n83), .SE(n83), .CK(
        clock), .RD(n101), .Q(v_out[2]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 v_out_reg_3_ ( .D(n86), .SI(n83), .SE(n83), .CK(
        clock), .RD(n82), .Q(v_out[3]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 v_out_reg_0_ ( .D(n85), .SI(n83), .SE(n83), .CK(
        clock), .RD(n101), .Q(v_out[0]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 v_out_reg_1_ ( .D(n84), .SI(n83), .SE(n83), .CK(
        clock), .RD(n101), .Q(v_out[1]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 stato_reg_0_ ( .D(n96), .SI(n83), .SE(n83), .CK(
        clock), .RD(n101), .Q(stato[0]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 voto1_reg ( .D(n91), .SI(n83), .SE(n83), .CK(clock), 
        .RD(n82), .Q(voto1) );
  SAEDRVT14_ND2_CDC_0P5 U104 ( .A1(n105), .A2(cts), .X(n104) );
  SAEDRVT14_AO22_0P75 U105 ( .A1(n109), .A2(v_out[1]), .B1(n182), .B2(voto1), 
        .X(n84) );
  SAEDRVT14_OAI22_0P5 U106 ( .A1(n130), .A2(n120), .B1(n148), .B2(n170), .X(
        n96) );
  SAEDRVT14_OAI22_0P5 U107 ( .A1(n130), .A2(n129), .B1(n148), .B2(n128), .X(
        n97) );
  SAEDRVT14_AO32_U_0P5 U108 ( .A1(stato[0]), .A2(n180), .A3(n148), .B1(
        stato[1]), .B2(n147), .X(n95) );
  SAEDRVT14_OAI21_0P5 U109 ( .A1(n124), .A2(n123), .B(n141), .X(n98) );
  SAEDRVT14_AN3_0P5 U110 ( .A1(n127), .A2(n170), .A3(n148), .X(n124) );
  SAEDRVT14_INV_0P5 U111 ( .A(n148), .X(n130) );
  SAEDRVT14_ND2_CDC_0P5 U112 ( .A1(n146), .A2(n148), .X(n147) );
  SAEDRVT14_MUX2_U_0P5 U113 ( .D0(n157), .D1(voto2), .S(n156), .X(n92) );
  SAEDRVT14_OAI21_0P5 U114 ( .A1(n106), .A2(n105), .B(n104), .X(n89) );
  SAEDRVT14_MUX2_U_0P5 U115 ( .D0(n145), .D1(voto0), .S(n144), .X(n99) );
  SAEDRVT14_MUX2_U_0P5 U116 ( .D0(n164), .D1(voto1), .S(n163), .X(n91) );
  SAEDRVT14_AOI21_0P75 U117 ( .A1(r_button), .A2(n155), .B(n161), .X(n156) );
  SAEDRVT14_AOI21_0P75 U118 ( .A1(g_button), .A2(n162), .B(n161), .X(n163) );
  SAEDRVT14_AOI21_0P75 U119 ( .A1(n143), .A2(n170), .B(n142), .X(n144) );
  SAEDRVT14_ND2_CDC_0P5 U120 ( .A1(n179), .A2(n115), .X(n116) );
  SAEDRVT14_INV_0P5 U121 ( .A(n179), .X(n181) );
  SAEDRVT14_OAI21_0P5 U122 ( .A1(n152), .A2(n151), .B(n150), .X(n93) );
  SAEDRVT14_MUX2_U_0P5 U123 ( .D0(last_r), .D1(r_button), .S(n149), .X(n100)
         );
  SAEDRVT14_AOI21_0P75 U124 ( .A1(n134), .A2(n127), .B(n152), .X(n129) );
  SAEDRVT14_OA31_1 U125 ( .A1(stato[1]), .A2(rts), .A3(n111), .B(n110), .X(
        n179) );
  SAEDRVT14_NR2_1 U126 ( .A1(n118), .A2(n103), .X(n105) );
  SAEDRVT14_MUX2_U_0P5 U127 ( .D0(last_g), .D1(g_button), .S(n149), .X(n94) );
  SAEDRVT14_ND2_CDC_0P5 U128 ( .A1(n174), .A2(n141), .X(n142) );
  SAEDRVT14_MUX2_U_0P5 U129 ( .D0(v_out[3]), .D1(voto3), .S(n182), .X(n86) );
  SAEDRVT14_OAI21_0P5 U130 ( .A1(key), .A2(n160), .B(n174), .X(n161) );
  SAEDRVT14_OA31_1 U131 ( .A1(stato[3]), .A2(n176), .A3(n175), .B(n174), .X(
        n177) );
  SAEDRVT14_MUX2_U_0P5 U132 ( .D0(v_out[2]), .D1(voto2), .S(n182), .X(n87) );
  SAEDRVT14_OAI22_0P5 U133 ( .A1(n182), .A2(n108), .B1(n109), .B2(n168), .X(
        n85) );
  SAEDRVT14_OAI21_0P5 U134 ( .A1(test), .A2(n126), .B(n150), .X(n152) );
  SAEDRVT14_OA2BB2_V1_0P5 U135 ( .A1(n133), .A2(n114), .B1(n113), .B2(n131), 
        .X(n115) );
  SAEDRVT14_OAI22_0P5 U136 ( .A1(voto2), .A2(n159), .B1(n172), .B2(n154), .X(
        n157) );
  SAEDRVT14_NR2_1 U137 ( .A1(n173), .A2(n160), .X(n149) );
  SAEDRVT14_OAI22_0P5 U138 ( .A1(n172), .A2(n171), .B1(n170), .B2(n169), .X(
        n178) );
  SAEDRVT14_OAI22_0P5 U139 ( .A1(voto1), .A2(n159), .B1(n172), .B2(n158), .X(
        n164) );
  SAEDRVT14_NR2_1 U140 ( .A1(last_r), .A2(n160), .X(n155) );
  SAEDRVT14_AOI21_0P75 U141 ( .A1(n132), .A2(n125), .B(n140), .X(n110) );
  SAEDRVT14_OAI21_0P5 U142 ( .A1(n146), .A2(n107), .B(n113), .X(n103) );
  SAEDRVT14_OAI22_0P5 U143 ( .A1(n172), .A2(n136), .B1(n135), .B2(n175), .X(
        n145) );
  SAEDRVT14_NR2_1 U144 ( .A1(rtr), .A2(n102), .X(n118) );
  SAEDRVT14_INV_0P5 U145 ( .A(n109), .X(n182) );
  SAEDRVT14_NR2_1 U146 ( .A1(n140), .A2(n139), .X(n174) );
  SAEDRVT14_NR2_1 U147 ( .A1(last_g), .A2(n160), .X(n162) );
  SAEDRVT14_ND2_CDC_0P5 U148 ( .A1(n122), .A2(n146), .X(n141) );
  SAEDRVT14_ND2_CDC_0P5 U149 ( .A1(n132), .A2(n125), .X(n126) );
  SAEDRVT14_AOI21_0P75 U150 ( .A1(stato[0]), .A2(rtr), .B(n134), .X(n106) );
  SAEDRVT14_NR2_1 U151 ( .A1(n134), .A2(n133), .X(n172) );
  SAEDRVT14_ND2B_U_0P5 U152 ( .A(n175), .B(n153), .X(n159) );
  SAEDRVT14_AOI21_0P75 U153 ( .A1(n132), .A2(n121), .B(n119), .X(n120) );
  SAEDRVT14_ND2_CDC_0P5 U154 ( .A1(n132), .A2(n143), .X(n160) );
  SAEDRVT14_AOI21_0P75 U155 ( .A1(n151), .A2(stato[3]), .B(n153), .X(n135) );
  SAEDRVT14_INV_0P5 U156 ( .A(n133), .X(n150) );
  SAEDRVT14_ND2B_U_0P5 U157 ( .A(n107), .B(n134), .X(n109) );
  SAEDRVT14_OAI21_0P5 U158 ( .A1(n168), .A2(n167), .B(n166), .X(n169) );
  SAEDRVT14_OA21_1 U159 ( .A1(n146), .A2(n131), .B(n122), .X(n117) );
  SAEDRVT14_AN3_0P5 U160 ( .A1(stato[1]), .A2(n134), .A3(rts), .X(n140) );
  SAEDRVT14_ND2_CDC_0P5 U161 ( .A1(n125), .A2(n128), .X(n113) );
  SAEDRVT14_NR2_1 U162 ( .A1(n146), .A2(n123), .X(n134) );
  SAEDRVT14_AOI21_0P75 U163 ( .A1(n168), .A2(n167), .B(n175), .X(n166) );
  SAEDRVT14_INV_0P5 U164 ( .A(n121), .X(n127) );
  SAEDRVT14_NR2_1 U165 ( .A1(stato[0]), .A2(n137), .X(n119) );
  SAEDRVT14_INV_0P5 U166 ( .A(n137), .X(n125) );
  SAEDRVT14_AOI21_0P75 U167 ( .A1(n146), .A2(n138), .B(n137), .X(n139) );
  SAEDRVT14_NR2_1 U168 ( .A1(n112), .A2(n137), .X(n133) );
  SAEDRVT14_NR2_1 U169 ( .A1(n146), .A2(n173), .X(n153) );
  SAEDRVT14_NR2_1 U170 ( .A1(n175), .A2(n131), .X(n143) );
  SAEDRVT14_AOI21_0P75 U171 ( .A1(stato[0]), .A2(stato[3]), .B(n175), .X(n122)
         );
  SAEDRVT14_OAI21_0P5 U172 ( .A1(voto1), .A2(voto2), .B(n165), .X(n167) );
  SAEDRVT14_OR3_0P5 U173 ( .A1(n170), .A2(n123), .A3(stato[3]), .X(n111) );
  SAEDRVT14_ND2_CDC_0P5 U174 ( .A1(rtr), .A2(n180), .X(n107) );
  SAEDRVT14_ND2_CDC_0P5 U175 ( .A1(n180), .A2(n123), .X(n137) );
  SAEDRVT14_ND2_CDC_0P5 U176 ( .A1(n123), .A2(stato[1]), .X(n175) );
  SAEDRVT14_INV_0P5 U177 ( .A(n132), .X(n146) );
  SAEDRVT14_INV_0P5 U178 ( .A(stato[2]), .X(n123) );
  SAEDRVT14_ND2_CDC_0P5 U179 ( .A1(voto1), .A2(voto2), .X(n165) );
  SAEDRVT14_INV_0P5 U180 ( .A(voto0), .X(n168) );
  SAEDRVT14_INV_0P5 U181 ( .A(stato[0]), .X(n170) );
  SAEDRVT14_NR2_1 U182 ( .A1(stato[0]), .A2(stato[3]), .X(n132) );
  SAEDRVT14_INV_0P5 U183 ( .A(v_out[0]), .X(n108) );
  SAEDRVT14_ND2_CDC_0P5 U184 ( .A1(stato[0]), .A2(stato[3]), .X(n112) );
  SAEDRVT14_OAI21_0P5 U185 ( .A1(stato[3]), .A2(start), .B(stato[0]), .X(n138)
         );
  SAEDRVT14_AOI21_0P75 U186 ( .A1(start), .A2(n173), .B(stato[0]), .X(n176) );
  SAEDRVT14_INV_0P5 U187 ( .A(stato[3]), .X(n128) );
  SAEDRVT14_INV_0P5 U188 ( .A(key), .X(n173) );
  SAEDRVT14_INV_0P5 U189 ( .A(start), .X(n131) );
  SAEDRVT14_INV_0P5 U190 ( .A(v_in[0]), .X(n136) );
  SAEDRVT14_INV_0P5 U191 ( .A(reset), .X(n82) );
  SAEDRVT14_INV_0P5 U192 ( .A(v_in[1]), .X(n158) );
  SAEDRVT14_INV_0P5 U193 ( .A(v_in[2]), .X(n154) );
  SAEDRVT14_INV_0P5 U194 ( .A(v_in[3]), .X(n171) );
  SAEDRVT14_INV_0P5 U195 ( .A(reset), .X(n101) );
  SAEDRVT14_AN4_0P5 U196 ( .A1(v_in[2]), .A2(v_in[0]), .A3(v_in[3]), .A4(
        v_in[1]), .X(n114) );
  SAEDRVT14_INV_0P5 U197 ( .A(stato[1]), .X(n180) );
  SAEDRVT14_OA21B_1 U198 ( .A1(n180), .A2(n111), .B(n119), .X(n102) );
  SAEDRVT14_OR4_1 U199 ( .A1(n118), .A2(n182), .A3(n117), .A4(n116), .X(n148)
         );
  SAEDRVT14_OR4_1 U200 ( .A1(stato[1]), .A2(voto0), .A3(voto3), .A4(n165), .X(
        n121) );
  SAEDRVT14_INV_0P5 U201 ( .A(sign_3_), .X(n151) );
  SAEDRVT14_MUX2_U_0P5 U202 ( .D0(n178), .D1(voto3), .S(n177), .X(n90) );
  SAEDRVT14_AO32_U_0P5 U203 ( .A1(stato[2]), .A2(n181), .A3(n180), .B1(n179), 
        .B2(ctr), .X(n88) );
  SAEDRVT14_FSDPRBQ_V2LP_1 sign_reg_3_ ( .D(n93), .SI(n83), .SE(n83), .CK(
        clock), .RD(n101), .Q(sign_3_) );
  SAEDRVT14_FSDPRBQ_V2LP_1 last_r_reg ( .D(n100), .SI(n83), .SE(n83), .CK(
        clock), .RD(n82), .Q(last_r) );
  SAEDRVT14_FSDPRBQ_V2LP_1 last_g_reg ( .D(n94), .SI(n83), .SE(n83), .CK(clock), .RD(n101), .Q(last_g) );
  SAEDRVT14_FSDPRBQ_V2LP_1 voto3_reg ( .D(n90), .SI(n83), .SE(n83), .CK(clock), 
        .RD(n82), .Q(voto3) );
  SAEDRVT14_FSDPRBQ_V2LP_1 voto0_reg ( .D(n99), .SI(n83), .SE(n83), .CK(clock), 
        .RD(n101), .Q(voto0) );
  SAEDRVT14_FSDPRBQ_V2LP_1 voto2_reg ( .D(n92), .SI(n83), .SE(n83), .CK(clock), 
        .RD(n101), .Q(voto2) );
  SAEDRVT14_FSDPRBQ_V2LP_1 stato_reg_1_ ( .D(n95), .SI(n83), .SE(n83), .CK(
        clock), .RD(n82), .Q(stato[1]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 stato_reg_2_ ( .D(n98), .SI(n83), .SE(n83), .CK(
        clock), .RD(n82), .Q(stato[2]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 stato_reg_3_ ( .D(n97), .SI(n83), .SE(n83), .CK(
        clock), .RD(n101), .Q(stato[3]) );
  SAEDRVT14_TIE0_V1_2 U103 ( .X(n83) );
endmodule

