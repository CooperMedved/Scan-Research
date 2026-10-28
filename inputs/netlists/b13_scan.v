/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : U-2022.12-SP6
// Date      : Tue Oct  6 14:27:12 2026
/////////////////////////////////////////////////////////////


module b13 ( reset, eoc, soc, load_dato, add_mpx2, canale, mux_en, clock, 
        data_in, dsr, error, data_out, scan_in, scan_out, scan_enable );
  output [3:0] canale;
  input [7:0] data_in;
  input reset, eoc, clock, dsr, scan_in, scan_enable;
  output soc, load_dato, add_mpx2, mux_en, error, data_out, scan_out;
  wire   send_data, rdy, N82, mpx, shot, confirm, load, send, tx_end, send_en,
         tre, N211, N212, n82, n84, n85, n86, n87, n88, n89, n93, n95, n96,
         n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119,
         n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n131,
         n132, n133, n134, n135, n136, n137, n138, n139, n140, n141, n142,
         n143, n144, n145, n146, n147, n148, n149, n150, n151, n152, n153,
         n154, n155, n156, n157, n158, n159, n160, n161, n162, n163, n164,
         n165, n166, n167, n168, n169, n170, n171, n172, n173, n174, n175,
         n176, n177, n178, n179, n180, n181, n182, n183, n184, n185, n186,
         n187, n188, n189, n190, n191, n192, n193, n194, n195, n196, n197,
         n198, n199, n200, n201, n202, n203, n204, n205, n206, n207, n208,
         n209, n210, n211, n212, n213, n214, n215, n216, n217, n218, n219,
         n220, n221, n222, n223, n224, n225, n226, n227, n228, n229, n230,
         n231;
  wire   [2:0] S1;
  wire   [1:0] S2;
  wire   [1:0] itfc_state;
  wire   [7:0] out_reg;
  wire   [3:0] next_bit;
  wire   [6:0] tx_conta;

  SAEDRVT14_FSDPRBQ_V2LP_1 add_mpx2_reg ( .D(n120), .SI(canale[3]), .SE(
        canale[3]), .CK(clock), .RD(n82), .Q(add_mpx2) );
  SAEDRVT14_FSDPRBQ_V2LP_1 mux_en_reg ( .D(n118), .SI(canale[3]), .SE(
        canale[3]), .CK(clock), .RD(n82), .Q(mux_en) );
  SAEDRVT14_FSDPRBQ_V2LP_1 load_dato_reg ( .D(n116), .SI(canale[3]), .SE(
        canale[3]), .CK(clock), .RD(n82), .Q(load_dato) );
  SAEDRVT14_FSDPRBQ_V2LP_1 soc_reg ( .D(n115), .SI(canale[3]), .SE(canale[3]), 
        .CK(clock), .RD(n82), .Q(soc) );
  SAEDRVT14_FSDPRBQ_V2LP_1 error_reg ( .D(n100), .SI(canale[3]), .SE(canale[3]), .CK(clock), .RD(n230), .Q(error) );
  SAEDRVT14_FSDPRBQ_V2LP_1 data_out_reg ( .D(N212), .SI(canale[3]), .SE(
        canale[3]), .CK(clock), .RD(n231), .Q(data_out) );
  SAEDRVT14_FSDPRBQ_V2LP_1 canale_reg_0_ ( .D(n97), .SI(canale[3]), .SE(
        canale[3]), .CK(clock), .RD(n231), .Q(canale[0]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 canale_reg_1_ ( .D(n96), .SI(canale[3]), .SE(
        canale[3]), .CK(clock), .RD(n231), .Q(canale[1]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 canale_reg_2_ ( .D(n95), .SI(canale[3]), .SE(
        canale[3]), .CK(clock), .RD(n231), .Q(canale[2]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 itfc_state_reg_0_ ( .D(n113), .SI(canale[3]), .SE(
        canale[3]), .CK(clock), .RD(n82), .Q(itfc_state[0]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 tx_conta_reg_0_ ( .D(n93), .SI(canale[3]), .SE(
        canale[3]), .CK(clock), .RD(n231), .Q(tx_conta[0]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 tx_conta_reg_1_ ( .D(n84), .SI(canale[3]), .SE(
        canale[3]), .CK(clock), .RD(n82), .Q(tx_conta[1]) );
  SAEDRVT14_INV_0P5 U136 ( .A(reset), .X(n82) );
  SAEDRVT14_BUF_S_0P5 U137 ( .A(n82), .X(n230) );
  SAEDRVT14_BUF_S_0P5 U138 ( .A(n82), .X(n231) );
  SAEDRVT14_INV_0P5 U139 ( .A(itfc_state[0]), .X(n214) );
  SAEDRVT14_INV_0P5 U140 ( .A(itfc_state[1]), .X(n212) );
  SAEDRVT14_ND2_CDC_0P5 U141 ( .A1(n214), .A2(n212), .X(n210) );
  SAEDRVT14_AN3_0P5 U142 ( .A1(itfc_state[0]), .A2(itfc_state[1]), .A3(tx_end), 
        .X(n209) );
  SAEDRVT14_AO21_U_0P5 U143 ( .A1(n210), .A2(confirm), .B(n209), .X(n121) );
  SAEDRVT14_NR2_1 U144 ( .A1(itfc_state[1]), .A2(n214), .X(n131) );
  SAEDRVT14_INV_0P5 U145 ( .A(load), .X(n211) );
  SAEDRVT14_INV_0P5 U146 ( .A(shot), .X(n134) );
  SAEDRVT14_OAI22_0P5 U147 ( .A1(n131), .A2(n211), .B1(n134), .B2(n210), .X(
        n111) );
  SAEDRVT14_INV_0P5 U148 ( .A(mpx), .X(n197) );
  SAEDRVT14_INV_0P5 U149 ( .A(S2[0]), .X(n188) );
  SAEDRVT14_ND2_CDC_0P5 U150 ( .A1(n188), .A2(S2[1]), .X(n135) );
  SAEDRVT14_OAI22_0P5 U151 ( .A1(S2[1]), .A2(n188), .B1(confirm), .B2(n135), 
        .X(n133) );
  SAEDRVT14_INV_0P5 U152 ( .A(n133), .X(n132) );
  SAEDRVT14_OAI21_0P5 U153 ( .A1(n197), .A2(n135), .B(n132), .X(n129) );
  SAEDRVT14_OAI22_0P5 U154 ( .A1(S2[1]), .A2(n188), .B1(n134), .B2(n133), .X(
        n114) );
  SAEDRVT14_ND2B_U_0P5 U155 ( .A(n135), .B(confirm), .X(n196) );
  SAEDRVT14_INV_0P5 U156 ( .A(n196), .X(n136) );
  SAEDRVT14_AO21_U_0P5 U157 ( .A1(n197), .A2(n136), .B(add_mpx2), .X(n120) );
  SAEDRVT14_OAI22_0P5 U158 ( .A1(mpx), .A2(n196), .B1(n197), .B2(n136), .X(n98) );
  SAEDRVT14_OA31_1 U159 ( .A1(tx_conta[1]), .A2(tx_conta[0]), .A3(tx_conta[2]), 
        .B(tx_conta[3]), .X(n137) );
  SAEDRVT14_NR2_1 U160 ( .A1(n137), .A2(tx_conta[4]), .X(n139) );
  SAEDRVT14_ND2_CDC_0P5 U161 ( .A1(tx_conta[6]), .A2(tx_conta[5]), .X(n138) );
  SAEDRVT14_NR2_1 U162 ( .A1(n139), .A2(n138), .X(n225) );
  SAEDRVT14_INV_0P5 U163 ( .A(n225), .X(n144) );
  SAEDRVT14_ND2_CDC_0P5 U164 ( .A1(send_en), .A2(n144), .X(n143) );
  SAEDRVT14_INV_0P5 U165 ( .A(tx_conta[0]), .X(n147) );
  SAEDRVT14_OAI22_0P5 U166 ( .A1(tx_conta[0]), .A2(n143), .B1(n147), .B2(
        send_en), .X(n93) );
  SAEDRVT14_INV_0P5 U167 ( .A(tx_conta[1]), .X(n145) );
  SAEDRVT14_NR2_1 U168 ( .A1(n145), .A2(n147), .X(n229) );
  SAEDRVT14_ND2_CDC_0P5 U169 ( .A1(tx_conta[2]), .A2(n229), .X(n140) );
  SAEDRVT14_NR2_1 U170 ( .A1(n140), .A2(n143), .X(n222) );
  SAEDRVT14_INV_0P5 U171 ( .A(n222), .X(n142) );
  SAEDRVT14_INV_0P5 U172 ( .A(tx_conta[3]), .X(n141) );
  SAEDRVT14_INV_0P5 U173 ( .A(send_en), .X(n181) );
  SAEDRVT14_AOI21_0P75 U174 ( .A1(n144), .A2(n140), .B(n181), .X(n220) );
  SAEDRVT14_OAI22_0P5 U175 ( .A1(tx_conta[3]), .A2(n142), .B1(n141), .B2(n220), 
        .X(n86) );
  SAEDRVT14_INV_0P5 U176 ( .A(n143), .X(n227) );
  SAEDRVT14_ND2_CDC_0P5 U177 ( .A1(n227), .A2(n145), .X(n146) );
  SAEDRVT14_AOI21_0P75 U178 ( .A1(n144), .A2(n147), .B(n181), .X(n224) );
  SAEDRVT14_OAI22_0P5 U179 ( .A1(n147), .A2(n146), .B1(n224), .B2(n145), .X(
        n84) );
  SAEDRVT14_AN4_0P5 U180 ( .A1(tx_conta[4]), .A2(tx_conta[2]), .A3(tx_conta[3]), .A4(n229), .X(n148) );
  SAEDRVT14_ND2_CDC_0P5 U181 ( .A1(n227), .A2(n148), .X(n150) );
  SAEDRVT14_INV_0P5 U182 ( .A(tx_conta[5]), .X(n151) );
  SAEDRVT14_OA21B_1 U183 ( .A1(n148), .A2(n225), .B(n181), .X(n149) );
  SAEDRVT14_OAI22_0P5 U184 ( .A1(tx_conta[5]), .A2(n150), .B1(n151), .B2(n149), 
        .X(n88) );
  SAEDRVT14_ND2_CDC_0P5 U185 ( .A1(send_en), .A2(n225), .X(n192) );
  SAEDRVT14_INV_0P5 U186 ( .A(n192), .X(n174) );
  SAEDRVT14_INV_0P5 U187 ( .A(tx_conta[6]), .X(n152) );
  SAEDRVT14_OAI22_0P5 U188 ( .A1(n174), .A2(n152), .B1(n151), .B2(n150), .X(
        n89) );
  SAEDRVT14_INV_0P5 U189 ( .A(S1[0]), .X(n201) );
  SAEDRVT14_ND2_CDC_0P5 U190 ( .A1(S1[1]), .A2(n201), .X(n207) );
  SAEDRVT14_INV_0P5 U191 ( .A(S1[2]), .X(n190) );
  SAEDRVT14_NR2_1 U192 ( .A1(n207), .A2(n190), .X(n205) );
  SAEDRVT14_ND2_CDC_0P5 U193 ( .A1(n205), .A2(canale[0]), .X(n153) );
  SAEDRVT14_OA21_1 U194 ( .A1(n205), .A2(canale[0]), .B(n153), .X(n97) );
  SAEDRVT14_INV_0P5 U195 ( .A(canale[1]), .X(n154) );
  SAEDRVT14_NR2_1 U196 ( .A1(n154), .A2(n153), .X(n219) );
  SAEDRVT14_AOI21_0P75 U197 ( .A1(n154), .A2(n153), .B(n219), .X(n96) );
  SAEDRVT14_NR2_1 U198 ( .A1(next_bit[3]), .A2(n192), .X(n158) );
  SAEDRVT14_ND2_CDC_0P5 U199 ( .A1(next_bit[0]), .A2(n158), .X(n195) );
  SAEDRVT14_INV_0P5 U200 ( .A(next_bit[2]), .X(n167) );
  SAEDRVT14_ND2_CDC_0P5 U201 ( .A1(next_bit[1]), .A2(n167), .X(n156) );
  SAEDRVT14_AO32_U_0P5 U202 ( .A1(n174), .A2(next_bit[0]), .A3(next_bit[1]), 
        .B1(n174), .B2(next_bit[3]), .X(n155) );
  SAEDRVT14_OAI22_0P5 U203 ( .A1(n195), .A2(n156), .B1(n155), .B2(n167), .X(
        n123) );
  SAEDRVT14_NR2_1 U204 ( .A1(next_bit[1]), .A2(next_bit[2]), .X(n172) );
  SAEDRVT14_INV_0P5 U205 ( .A(n172), .X(n176) );
  SAEDRVT14_NR2_1 U206 ( .A1(n195), .A2(n176), .X(N211) );
  SAEDRVT14_INV_0P5 U207 ( .A(next_bit[1]), .X(n169) );
  SAEDRVT14_INV_0P5 U208 ( .A(next_bit[0]), .X(n162) );
  SAEDRVT14_NR2_1 U209 ( .A1(next_bit[1]), .A2(n167), .X(n157) );
  SAEDRVT14_MUXI2_U_0P5 U210 ( .D0(n162), .D1(next_bit[0]), .S(n157), .X(n159)
         );
  SAEDRVT14_INV_0P5 U211 ( .A(n158), .X(n160) );
  SAEDRVT14_OAI22_0P5 U212 ( .A1(n174), .A2(n169), .B1(n159), .B2(n160), .X(
        n122) );
  SAEDRVT14_ND2_CDC_0P5 U213 ( .A1(next_bit[3]), .A2(n172), .X(n173) );
  SAEDRVT14_OAI21_0P5 U214 ( .A1(n160), .A2(n172), .B(n162), .X(n161) );
  SAEDRVT14_OAI21_0P5 U215 ( .A1(n162), .A2(n192), .B(n161), .X(n163) );
  SAEDRVT14_OAI21_0P5 U216 ( .A1(n192), .A2(n173), .B(n163), .X(n125) );
  SAEDRVT14_AO32_U_0P5 U217 ( .A1(next_bit[1]), .A2(next_bit[2]), .A3(
        out_reg[2]), .B1(n167), .B2(out_reg[6]), .X(n164) );
  SAEDRVT14_AOI21_0P75 U218 ( .A1(out_reg[4]), .A2(n169), .B(n164), .X(n165)
         );
  SAEDRVT14_ND2_CDC_0P5 U219 ( .A1(next_bit[0]), .A2(n165), .X(n171) );
  SAEDRVT14_ND2_CDC_0P5 U220 ( .A1(out_reg[7]), .A2(n167), .X(n168) );
  SAEDRVT14_OAI22_0P5 U221 ( .A1(next_bit[1]), .A2(out_reg[5]), .B1(n169), 
        .B2(out_reg[3]), .X(n166) );
  SAEDRVT14_OAI22_0P5 U222 ( .A1(n169), .A2(n168), .B1(n167), .B2(n166), .X(
        n170) );
  SAEDRVT14_OAI22_0P5 U223 ( .A1(n172), .A2(n171), .B1(n170), .B2(next_bit[0]), 
        .X(n179) );
  SAEDRVT14_NR2_1 U224 ( .A1(next_bit[0]), .A2(n173), .X(n191) );
  SAEDRVT14_ND2_CDC_0P5 U225 ( .A1(next_bit[0]), .A2(out_reg[0]), .X(n175) );
  SAEDRVT14_OAI21_0P5 U226 ( .A1(n176), .A2(n175), .B(n174), .X(n177) );
  SAEDRVT14_AOI21_0P75 U227 ( .A1(n191), .A2(out_reg[1]), .B(n177), .X(n178)
         );
  SAEDRVT14_OAI21_0P5 U228 ( .A1(next_bit[3]), .A2(n179), .B(n178), .X(N212)
         );
  SAEDRVT14_AN3_0P5 U229 ( .A1(send), .A2(tre), .A3(dsr), .X(n216) );
  SAEDRVT14_INV_0P5 U230 ( .A(n216), .X(n180) );
  SAEDRVT14_OAI21_0P5 U231 ( .A1(n181), .A2(tx_end), .B(n180), .X(n99) );
  SAEDRVT14_INV_0P5 U232 ( .A(n205), .X(n182) );
  SAEDRVT14_INV_0P5 U233 ( .A(S1[1]), .X(n203) );
  SAEDRVT14_INV_0P5 U234 ( .A(eoc), .X(n183) );
  SAEDRVT14_AN4_0P5 U235 ( .A1(S1[0]), .A2(S1[2]), .A3(n203), .A4(n183), .X(
        n187) );
  SAEDRVT14_AO21_U_0P5 U236 ( .A1(load_dato), .A2(n182), .B(n187), .X(n116) );
  SAEDRVT14_OA33_U_0P5 U237 ( .A1(S1[1]), .A2(n183), .A3(n190), .B1(n203), 
        .B2(S1[2]), .B3(rdy), .X(n184) );
  SAEDRVT14_ND2_CDC_0P5 U238 ( .A1(S1[0]), .A2(n184), .X(n126) );
  SAEDRVT14_INV_0P5 U239 ( .A(mux_en), .X(n186) );
  SAEDRVT14_ND2_CDC_0P5 U240 ( .A1(n203), .A2(n190), .X(n185) );
  SAEDRVT14_OAI22_0P5 U241 ( .A1(n187), .A2(n186), .B1(S1[0]), .B2(n185), .X(
        n118) );
  SAEDRVT14_OR3_0P5 U242 ( .A1(tre), .A2(load), .A3(tx_end), .X(n110) );
  SAEDRVT14_ND2_CDC_0P5 U243 ( .A1(S1[0]), .A2(S1[2]), .X(n204) );
  SAEDRVT14_ND2_CDC_0P5 U244 ( .A1(n207), .A2(n204), .X(N82) );
  SAEDRVT14_ND3B_0P5 U245 ( .A(S2[1]), .B1(n188), .B2(send_data), .X(n199) );
  SAEDRVT14_ND2_CDC_0P5 U246 ( .A1(n199), .A2(n196), .X(n128) );
  SAEDRVT14_ND2_CDC_0P5 U247 ( .A1(rdy), .A2(S1[1]), .X(n200) );
  SAEDRVT14_OAI21_0P5 U248 ( .A1(S1[1]), .A2(eoc), .B(S1[0]), .X(n189) );
  SAEDRVT14_AO32_U_0P5 U249 ( .A1(S1[0]), .A2(n190), .A3(n200), .B1(S1[2]), 
        .B2(n189), .X(n127) );
  SAEDRVT14_ND2_CDC_0P5 U250 ( .A1(next_bit[1]), .A2(next_bit[2]), .X(n194) );
  SAEDRVT14_AOI21_0P75 U251 ( .A1(next_bit[3]), .A2(n192), .B(n191), .X(n193)
         );
  SAEDRVT14_OAI21_0P5 U252 ( .A1(n195), .A2(n194), .B(n193), .X(n124) );
  SAEDRVT14_OAI21_0P5 U253 ( .A1(n197), .A2(n196), .B(rdy), .X(n198) );
  SAEDRVT14_ND2_CDC_0P5 U254 ( .A1(n199), .A2(n198), .X(n119) );
  SAEDRVT14_OAI21_0P5 U255 ( .A1(n201), .A2(n200), .B(send_data), .X(n202) );
  SAEDRVT14_OAI21_0P5 U256 ( .A1(n204), .A2(n203), .B(n202), .X(n117) );
  SAEDRVT14_INV_0P5 U257 ( .A(soc), .X(n206) );
  SAEDRVT14_AOI21_0P75 U258 ( .A1(n207), .A2(n206), .B(n205), .X(n115) );
  SAEDRVT14_OAI21_0P5 U259 ( .A1(itfc_state[1]), .A2(shot), .B(n214), .X(n208)
         );
  SAEDRVT14_OAI21_0P5 U260 ( .A1(tx_end), .A2(n212), .B(n208), .X(n113) );
  SAEDRVT14_OR2_MM_0P5 U262 ( .A1(tre), .A2(n211), .X(n215) );
  SAEDRVT14_MUX2_U_0P5 U263 ( .D0(data_in[0]), .D1(out_reg[0]), .S(n215), .X(
        n109) );
  SAEDRVT14_MUX2_U_0P5 U264 ( .D0(data_in[1]), .D1(out_reg[1]), .S(n215), .X(
        n108) );
  SAEDRVT14_MUX2_U_0P5 U265 ( .D0(data_in[2]), .D1(out_reg[2]), .S(n215), .X(
        n107) );
  SAEDRVT14_MUX2_U_0P5 U266 ( .D0(data_in[3]), .D1(out_reg[3]), .S(n215), .X(
        n106) );
  SAEDRVT14_MUX2_U_0P5 U267 ( .D0(data_in[4]), .D1(out_reg[4]), .S(n215), .X(
        n105) );
  SAEDRVT14_MUX2_U_0P5 U268 ( .D0(data_in[5]), .D1(out_reg[5]), .S(n215), .X(
        n104) );
  SAEDRVT14_MUX2_U_0P5 U269 ( .D0(data_in[6]), .D1(out_reg[6]), .S(n215), .X(
        n103) );
  SAEDRVT14_MUX2_U_0P5 U270 ( .D0(data_in[7]), .D1(out_reg[7]), .S(n215), .X(
        n102) );
  SAEDRVT14_OAI21_0P5 U271 ( .A1(itfc_state[0]), .A2(n212), .B(send), .X(n213)
         );
  SAEDRVT14_OAI21_0P5 U272 ( .A1(itfc_state[1]), .A2(n214), .B(n213), .X(n101)
         );
  SAEDRVT14_INV_0P5 U273 ( .A(send), .X(n218) );
  SAEDRVT14_OAI21_0P5 U274 ( .A1(load), .A2(error), .B(n215), .X(n217) );
  SAEDRVT14_AOI21_0P75 U275 ( .A1(n218), .A2(n217), .B(n216), .X(n100) );
  SAEDRVT14_EO2_V1_0P75 U276 ( .A1(canale[2]), .A2(n219), .X(n95) );
  SAEDRVT14_INV_0P5 U277 ( .A(tx_conta[4]), .X(n223) );
  SAEDRVT14_OAI21_0P5 U278 ( .A1(tx_conta[3]), .A2(n225), .B(n220), .X(n221)
         );
  SAEDRVT14_AO32_U_0P5 U279 ( .A1(tx_conta[3]), .A2(n223), .A3(n222), .B1(
        tx_conta[4]), .B2(n221), .X(n87) );
  SAEDRVT14_INV_0P5 U280 ( .A(tx_conta[2]), .X(n228) );
  SAEDRVT14_OAI21_0P5 U281 ( .A1(tx_conta[1]), .A2(n225), .B(n224), .X(n226)
         );
  SAEDRVT14_AO32_U_0P5 U282 ( .A1(n229), .A2(n228), .A3(n227), .B1(tx_conta[2]), .B2(n226), .X(n85) );
  SAEDRVT14_FSDPRBQ_V2LP_1 tre_reg ( .D(n110), .SI(canale[3]), .SE(canale[3]), 
        .CK(clock), .RD(n230), .Q(tre) );
  SAEDRVT14_FSDPRBQ_V2LP_1 itfc_state_reg_1_ ( .D(n112), .SI(canale[3]), .SE(
        canale[3]), .CK(clock), .RD(n231), .Q(itfc_state[1]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 send_reg ( .D(n101), .SI(canale[3]), .SE(canale[3]), 
        .CK(clock), .RD(n231), .Q(send) );
  SAEDRVT14_FSDPRBQ_V2LP_1 confirm_reg ( .D(n121), .SI(canale[3]), .SE(
        canale[3]), .CK(clock), .RD(n230), .Q(confirm) );
  SAEDRVT14_FSDPRBQ_V2LP_1 load_reg ( .D(n111), .SI(canale[3]), .SE(canale[3]), 
        .CK(clock), .RD(n230), .Q(load) );
  SAEDRVT14_FSDPRBQ_V2LP_1 S2_reg_0_ ( .D(n128), .SI(canale[3]), .SE(canale[3]), .CK(clock), .RD(n82), .Q(S2[0]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 S2_reg_1_ ( .D(n129), .SI(canale[3]), .SE(canale[3]), .CK(clock), .RD(n230), .Q(S2[1]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 shot_reg ( .D(n114), .SI(canale[3]), .SE(canale[3]), 
        .CK(clock), .RD(n82), .Q(shot) );
  SAEDRVT14_FSDPRBQ_V2LP_1 rdy_reg ( .D(n119), .SI(canale[3]), .SE(canale[3]), 
        .CK(clock), .RD(n231), .Q(rdy) );
  SAEDRVT14_FSDPRBQ_V2LP_1 mpx_reg ( .D(n98), .SI(canale[3]), .SE(canale[3]), 
        .CK(clock), .RD(n231), .Q(mpx) );
  SAEDRVT14_FSDPRBQ_V2LP_1 tx_conta_reg_4_ ( .D(n87), .SI(canale[3]), .SE(
        canale[3]), .CK(clock), .RD(n82), .Q(tx_conta[4]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 tx_conta_reg_2_ ( .D(n85), .SI(canale[3]), .SE(
        canale[3]), .CK(clock), .RD(n82), .Q(tx_conta[2]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 tx_conta_reg_3_ ( .D(n86), .SI(canale[3]), .SE(
        canale[3]), .CK(clock), .RD(n82), .Q(tx_conta[3]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 tx_conta_reg_5_ ( .D(n88), .SI(canale[3]), .SE(
        canale[3]), .CK(clock), .RD(n231), .Q(tx_conta[5]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 tx_conta_reg_6_ ( .D(n89), .SI(canale[3]), .SE(
        canale[3]), .CK(clock), .RD(n231), .Q(tx_conta[6]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 send_data_reg ( .D(n117), .SI(canale[3]), .SE(
        canale[3]), .CK(clock), .RD(n82), .Q(send_data) );
  SAEDRVT14_FSDPRBQ_V2LP_1 S1_reg_2_ ( .D(N82), .SI(canale[3]), .SE(canale[3]), 
        .CK(clock), .RD(n231), .Q(S1[2]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 next_bit_reg_2_ ( .D(n123), .SI(canale[3]), .SE(
        canale[3]), .CK(clock), .RD(n230), .Q(next_bit[2]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 next_bit_reg_1_ ( .D(n122), .SI(canale[3]), .SE(
        canale[3]), .CK(clock), .RD(n231), .Q(next_bit[1]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 tx_end_reg ( .D(N211), .SI(canale[3]), .SE(
        canale[3]), .CK(clock), .RD(n231), .Q(tx_end) );
  SAEDRVT14_FSDPRBQ_V2LP_1 next_bit_reg_0_ ( .D(n125), .SI(canale[3]), .SE(
        canale[3]), .CK(clock), .RD(n231), .Q(next_bit[0]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 next_bit_reg_3_ ( .D(n124), .SI(canale[3]), .SE(
        canale[3]), .CK(clock), .RD(n230), .Q(next_bit[3]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 out_reg_reg_7_ ( .D(n102), .SI(canale[3]), .SE(
        canale[3]), .CK(clock), .RD(n230), .Q(out_reg[7]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 out_reg_reg_6_ ( .D(n103), .SI(canale[3]), .SE(
        canale[3]), .CK(clock), .RD(n230), .Q(out_reg[6]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 out_reg_reg_5_ ( .D(n104), .SI(canale[3]), .SE(
        canale[3]), .CK(clock), .RD(n230), .Q(out_reg[5]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 out_reg_reg_4_ ( .D(n105), .SI(canale[3]), .SE(
        canale[3]), .CK(clock), .RD(n230), .Q(out_reg[4]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 out_reg_reg_3_ ( .D(n106), .SI(canale[3]), .SE(
        canale[3]), .CK(clock), .RD(n230), .Q(out_reg[3]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 out_reg_reg_2_ ( .D(n107), .SI(canale[3]), .SE(
        canale[3]), .CK(clock), .RD(n230), .Q(out_reg[2]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 out_reg_reg_1_ ( .D(n108), .SI(canale[3]), .SE(
        canale[3]), .CK(clock), .RD(n230), .Q(out_reg[1]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 out_reg_reg_0_ ( .D(n109), .SI(canale[3]), .SE(
        canale[3]), .CK(clock), .RD(n230), .Q(out_reg[0]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 send_en_reg ( .D(n99), .SI(canale[3]), .SE(
        canale[3]), .CK(clock), .RD(n230), .Q(send_en) );
  SAEDRVT14_FSDPRBQ_V2LP_1 S1_reg_1_ ( .D(n127), .SI(canale[3]), .SE(canale[3]), .CK(clock), .RD(n82), .Q(S1[1]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 S1_reg_0_ ( .D(n126), .SI(canale[3]), .SE(canale[3]), .CK(clock), .RD(n231), .Q(S1[0]) );
  SAEDRVT14_TIE0_V1_2 U135 ( .X(canale[3]) );
  SAEDRVT14_NR2B_U_0P5 U261 ( .A(n210), .B(n209), .X(n112) );
endmodule

