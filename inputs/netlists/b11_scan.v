/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : U-2022.12-SP6
// Date      : Tue Oct  6 14:26:10 2026
/////////////////////////////////////////////////////////////


module b11 ( x_in, stbi, clock, reset, x_out, scan_in, scan_out, scan_enable
 );
  input [5:0] x_in;
  output [5:0] x_out;
  input stbi, clock, reset, scan_in, scan_enable;
  output scan_out;
  wire   N213, N215, N242, N243, N244, N245, C34_DATA3_0, C34_DATA3_1,
         C34_DATA3_2, C34_DATA3_3, C34_DATA3_4, C34_DATA3_5, C34_DATA3_6,
         C34_DATA3_7, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n132, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n143, n144, n145, n146, C1_Z_0, U7_RSOP_55_C2_Z_7,
         U7_RSOP_55_C2_Z_6, U7_RSOP_55_C2_Z_5, U7_RSOP_55_C2_Z_4,
         U7_RSOP_55_C2_Z_3, U7_RSOP_55_C2_Z_2, U7_RSOP_55_C2_Z_1,
         U7_RSOP_55_C2_Z_0, DP_OP_65J1_122_1856_n22, DP_OP_65J1_122_1856_n21,
         DP_OP_65J1_122_1856_n20, DP_OP_65J1_122_1856_n19,
         DP_OP_65J1_122_1856_n18, DP_OP_65J1_122_1856_n17,
         DP_OP_65J1_122_1856_n16, DP_OP_65J1_122_1856_n15,
         DP_OP_65J1_122_1856_n9, DP_OP_65J1_122_1856_n8,
         DP_OP_65J1_122_1856_n7, DP_OP_65J1_122_1856_n6,
         DP_OP_65J1_122_1856_n5, DP_OP_65J1_122_1856_n4,
         DP_OP_65J1_122_1856_n3, DP_OP_65J1_122_1856_n2, n155, n156, n157,
         n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, n168,
         n169, n170, n171, n172, n173, n174, n175, n176, n177, n178, n179,
         n180, n181, n182, n183, n184, n185, n186, n187, n188, n189, n190,
         n191, n192, n193, n194, n195, n196, n197, n198, n199, n200, n201,
         n202, n203, n204, n205, n206, n207, n208, n209, n210, n211, n212,
         n213, n214, n215, n216, n217, n218, n219, n220, n221, n222, n223,
         n224, n225, n226, n227, n228, n229, n230, n231, n232, n233, n234,
         n235, n236, n237, n238, n239, n240, n241, n242, n243, n244, n245,
         n246, n247, n248, n249, n250, n251, n252, n253, n254, n255, n256,
         n257, n258, n259, n260, n261, n262, n263, n264, n265, n266, n267,
         n268, n269, n270, n271, n272, n273, n274, n275, n276, n277, n278,
         n279, n280, n281, n282, n283, n284, n285, n286, n287, n288, n289,
         n290, n291, n292, n293, n294, n295, n296, n297, n298, n299, n300,
         n301, n302, n303, n304, n305, n306, n307, n308, n309, n310, n311,
         n312, n313, n314, n315, n316, n317, n318, n319, n320, n321, n322,
         n323;
  wire   [3:0] stato;
  wire   [5:0] r_in;
  wire   [4:0] cont;
  wire   [7:1] cont1;

  SAEDRVT14_FSDPRBQ_V2LP_1 x_out_reg_5_ ( .D(n120), .SI(n119), .SE(n119), .CK(
        clock), .RD(n323), .Q(x_out[5]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 x_out_reg_4_ ( .D(n121), .SI(n119), .SE(n119), .CK(
        clock), .RD(n323), .Q(x_out[4]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 x_out_reg_3_ ( .D(n122), .SI(n119), .SE(n119), .CK(
        clock), .RD(n323), .Q(x_out[3]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 x_out_reg_2_ ( .D(n123), .SI(n119), .SE(n119), .CK(
        clock), .RD(n323), .Q(x_out[2]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 x_out_reg_1_ ( .D(n124), .SI(n119), .SE(n119), .CK(
        clock), .RD(n323), .Q(x_out[1]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 x_out_reg_0_ ( .D(n125), .SI(n119), .SE(n119), .CK(
        clock), .RD(n322), .Q(x_out[0]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 r_in_reg_3_ ( .D(n134), .SI(n119), .SE(n119), .CK(
        clock), .RD(n323), .Q(r_in[3]) );
  SAEDRVT14_ADDF_V1_0P5 DP_OP_65J1_122_1856_U10 ( .A(DP_OP_65J1_122_1856_n22), 
        .B(U7_RSOP_55_C2_Z_0), .CI(C1_Z_0), .CO(DP_OP_65J1_122_1856_n9), .S(
        C34_DATA3_0) );
  SAEDRVT14_ADDF_V1_0P5 DP_OP_65J1_122_1856_U9 ( .A(DP_OP_65J1_122_1856_n9), 
        .B(DP_OP_65J1_122_1856_n21), .CI(U7_RSOP_55_C2_Z_1), .CO(
        DP_OP_65J1_122_1856_n8), .S(C34_DATA3_1) );
  SAEDRVT14_ADDF_V1_0P5 DP_OP_65J1_122_1856_U8 ( .A(DP_OP_65J1_122_1856_n8), 
        .B(DP_OP_65J1_122_1856_n20), .CI(U7_RSOP_55_C2_Z_2), .CO(
        DP_OP_65J1_122_1856_n7), .S(C34_DATA3_2) );
  SAEDRVT14_ADDF_V1_0P5 DP_OP_65J1_122_1856_U7 ( .A(DP_OP_65J1_122_1856_n7), 
        .B(DP_OP_65J1_122_1856_n19), .CI(U7_RSOP_55_C2_Z_3), .CO(
        DP_OP_65J1_122_1856_n6), .S(C34_DATA3_3) );
  SAEDRVT14_ADDF_V1_0P5 DP_OP_65J1_122_1856_U6 ( .A(DP_OP_65J1_122_1856_n6), 
        .B(DP_OP_65J1_122_1856_n18), .CI(U7_RSOP_55_C2_Z_4), .CO(
        DP_OP_65J1_122_1856_n5), .S(C34_DATA3_4) );
  SAEDRVT14_ADDF_V1_0P5 DP_OP_65J1_122_1856_U5 ( .A(DP_OP_65J1_122_1856_n5), 
        .B(DP_OP_65J1_122_1856_n17), .CI(U7_RSOP_55_C2_Z_5), .CO(
        DP_OP_65J1_122_1856_n4), .S(C34_DATA3_5) );
  SAEDRVT14_ADDF_V1_0P5 DP_OP_65J1_122_1856_U4 ( .A(DP_OP_65J1_122_1856_n4), 
        .B(DP_OP_65J1_122_1856_n16), .CI(U7_RSOP_55_C2_Z_6), .CO(
        DP_OP_65J1_122_1856_n3), .S(C34_DATA3_6) );
  SAEDRVT14_ADDF_V1_0P5 DP_OP_65J1_122_1856_U3 ( .A(DP_OP_65J1_122_1856_n3), 
        .B(DP_OP_65J1_122_1856_n15), .CI(U7_RSOP_55_C2_Z_7), .CO(
        DP_OP_65J1_122_1856_n2), .S(C34_DATA3_7) );
  SAEDRVT14_FSDPRBQ_V2LP_1 cont1_reg_8_ ( .D(n145), .SI(n119), .SE(n119), .CK(
        clock), .RD(n323), .Q(N213) );
  SAEDRVT14_FSDPRBQ_V2LP_1 cont1_reg_0_ ( .D(n146), .SI(n119), .SE(n119), .CK(
        clock), .RD(n322), .Q(N215) );
  SAEDRVT14_INV_0P5 U162 ( .A(stato[2]), .X(n192) );
  SAEDRVT14_INV_0P5 U163 ( .A(reset), .X(n323) );
  SAEDRVT14_BUF_S_0P5 U164 ( .A(n323), .X(n322) );
  SAEDRVT14_NR2_1 U165 ( .A1(stato[2]), .A2(stato[1]), .X(n209) );
  SAEDRVT14_INV_0P5 U166 ( .A(stato[0]), .X(n285) );
  SAEDRVT14_ND2_CDC_0P5 U167 ( .A1(n209), .A2(n285), .X(n319) );
  SAEDRVT14_INV_0P5 U168 ( .A(n319), .X(n321) );
  SAEDRVT14_INV_0P5 U169 ( .A(x_out[0]), .X(n155) );
  SAEDRVT14_INV_0P5 U170 ( .A(N215), .X(n269) );
  SAEDRVT14_ND2_CDC_0P5 U171 ( .A1(stato[3]), .A2(n321), .X(n168) );
  SAEDRVT14_OAI22_0P5 U172 ( .A1(n321), .A2(n155), .B1(n269), .B2(n168), .X(
        n125) );
  SAEDRVT14_INV_0P5 U173 ( .A(x_out[4]), .X(n158) );
  SAEDRVT14_INV_0P5 U174 ( .A(cont1[4]), .X(n238) );
  SAEDRVT14_NR2_1 U175 ( .A1(cont1[1]), .A2(N215), .X(n315) );
  SAEDRVT14_INV_0P5 U176 ( .A(cont1[2]), .X(n316) );
  SAEDRVT14_ND2_CDC_0P5 U177 ( .A1(n315), .A2(n316), .X(n166) );
  SAEDRVT14_NR2_1 U178 ( .A1(cont1[3]), .A2(n166), .X(n159) );
  SAEDRVT14_INV_0P5 U179 ( .A(N213), .X(n234) );
  SAEDRVT14_NR2_1 U180 ( .A1(n159), .A2(n234), .X(n156) );
  SAEDRVT14_MUXI2_U_0P5 U181 ( .D0(cont1[4]), .D1(n238), .S(n156), .X(n157) );
  SAEDRVT14_OAI22_0P5 U182 ( .A1(n321), .A2(n158), .B1(n157), .B2(n168), .X(
        n121) );
  SAEDRVT14_INV_0P5 U183 ( .A(x_out[5]), .X(n162) );
  SAEDRVT14_INV_0P5 U184 ( .A(cont1[5]), .X(n255) );
  SAEDRVT14_AOI21_0P75 U185 ( .A1(n159), .A2(n238), .B(n234), .X(n160) );
  SAEDRVT14_MUXI2_U_0P5 U186 ( .D0(cont1[5]), .D1(n255), .S(n160), .X(n161) );
  SAEDRVT14_OAI22_0P5 U187 ( .A1(n321), .A2(n162), .B1(n161), .B2(n168), .X(
        n120) );
  SAEDRVT14_INV_0P5 U188 ( .A(x_out[1]), .X(n165) );
  SAEDRVT14_INV_0P5 U189 ( .A(cont1[1]), .X(n250) );
  SAEDRVT14_NR2_1 U190 ( .A1(n234), .A2(n269), .X(n163) );
  SAEDRVT14_MUXI2_U_0P5 U191 ( .D0(cont1[1]), .D1(n250), .S(n163), .X(n164) );
  SAEDRVT14_OAI22_0P5 U192 ( .A1(n321), .A2(n165), .B1(n164), .B2(n168), .X(
        n124) );
  SAEDRVT14_INV_0P5 U193 ( .A(x_out[3]), .X(n170) );
  SAEDRVT14_ND2_CDC_0P5 U194 ( .A1(N213), .A2(n166), .X(n317) );
  SAEDRVT14_INV_0P5 U195 ( .A(n317), .X(n167) );
  SAEDRVT14_INV_0P5 U196 ( .A(cont1[3]), .X(n243) );
  SAEDRVT14_OAI22_0P5 U197 ( .A1(cont1[3]), .A2(n167), .B1(n243), .B2(n317), 
        .X(n169) );
  SAEDRVT14_OAI22_0P5 U198 ( .A1(n321), .A2(n170), .B1(n169), .B2(n168), .X(
        n122) );
  SAEDRVT14_INV_0P5 U199 ( .A(cont[0]), .X(n301) );
  SAEDRVT14_INV_0P5 U200 ( .A(cont[1]), .X(n197) );
  SAEDRVT14_NR2_1 U201 ( .A1(n301), .A2(n197), .X(n312) );
  SAEDRVT14_ND2_CDC_0P5 U202 ( .A1(cont[2]), .A2(n312), .X(n179) );
  SAEDRVT14_INV_0P5 U203 ( .A(stato[1]), .X(n171) );
  SAEDRVT14_OR4_1 U204 ( .A1(n171), .A2(stato[2]), .A3(stato[0]), .A4(stato[3]), .X(n211) );
  SAEDRVT14_INV_0P5 U205 ( .A(n211), .X(n176) );
  SAEDRVT14_OA31_1 U206 ( .A1(cont[0]), .A2(cont[1]), .A3(cont[2]), .B(cont[4]), .X(n172) );
  SAEDRVT14_ND2_CDC_0P5 U207 ( .A1(cont[3]), .A2(n172), .X(n175) );
  SAEDRVT14_AN4_0P5 U208 ( .A1(r_in[4]), .A2(r_in[5]), .A3(r_in[1]), .A4(
        r_in[0]), .X(n174) );
  SAEDRVT14_INV_0P5 U209 ( .A(r_in[2]), .X(n280) );
  SAEDRVT14_INV_0P5 U210 ( .A(r_in[4]), .X(n278) );
  SAEDRVT14_INV_0P5 U211 ( .A(r_in[5]), .X(n262) );
  SAEDRVT14_INV_0P5 U212 ( .A(r_in[1]), .X(n208) );
  SAEDRVT14_INV_0P5 U213 ( .A(r_in[0]), .X(n303) );
  SAEDRVT14_AN4_0P5 U214 ( .A1(n278), .A2(n262), .A3(n208), .A4(n303), .X(n173) );
  SAEDRVT14_INV_0P5 U215 ( .A(r_in[3]), .X(n246) );
  SAEDRVT14_AO33_U_0P5 U216 ( .A1(r_in[2]), .A2(r_in[3]), .A3(n174), .B1(n280), 
        .B2(n173), .B3(n246), .X(n212) );
  SAEDRVT14_ND2_CDC_0P5 U217 ( .A1(n176), .A2(n212), .X(n304) );
  SAEDRVT14_OAI21_0P5 U218 ( .A1(stato[3]), .A2(n319), .B(n304), .X(n180) );
  SAEDRVT14_AN3_0P5 U219 ( .A1(n176), .A2(n175), .A3(n180), .X(n314) );
  SAEDRVT14_ND2B_U_0P5 U220 ( .A(n179), .B(n314), .X(n178) );
  SAEDRVT14_INV_0P5 U221 ( .A(cont[3]), .X(n204) );
  SAEDRVT14_INV_0P5 U222 ( .A(n180), .X(n184) );
  SAEDRVT14_OAI21_0P5 U223 ( .A1(n184), .A2(n314), .B(cont[4]), .X(n177) );
  SAEDRVT14_OAI21_0P5 U224 ( .A1(n178), .A2(n204), .B(n177), .X(n126) );
  SAEDRVT14_INV_0P5 U225 ( .A(n314), .X(n182) );
  SAEDRVT14_OAI22_0P5 U226 ( .A1(cont[0]), .A2(n182), .B1(n301), .B2(n180), 
        .X(n130) );
  SAEDRVT14_EO2_V1_0P75 U227 ( .A1(cont[3]), .A2(n179), .X(n181) );
  SAEDRVT14_OAI22_0P5 U228 ( .A1(n181), .A2(n182), .B1(n180), .B2(n204), .X(
        n127) );
  SAEDRVT14_NR2_1 U229 ( .A1(cont[0]), .A2(n182), .X(n183) );
  SAEDRVT14_NR2_1 U230 ( .A1(n184), .A2(n183), .X(n310) );
  SAEDRVT14_ND2_CDC_0P5 U231 ( .A1(n314), .A2(n197), .X(n309) );
  SAEDRVT14_OAI22_0P5 U232 ( .A1(n310), .A2(n197), .B1(n301), .B2(n309), .X(
        n129) );
  SAEDRVT14_ND2_CDC_0P5 U233 ( .A1(stato[1]), .A2(stato[0]), .X(n185) );
  SAEDRVT14_NR2_1 U234 ( .A1(stato[3]), .A2(n185), .X(n193) );
  SAEDRVT14_ND2_CDC_0P5 U235 ( .A1(stato[2]), .A2(n193), .X(n223) );
  SAEDRVT14_ND2_CDC_0P5 U236 ( .A1(n304), .A2(n223), .X(N245) );
  SAEDRVT14_AO32_U_0P5 U237 ( .A1(cont1[3]), .A2(cont1[1]), .A3(N215), .B1(
        cont1[3]), .B2(cont1[2]), .X(n187) );
  SAEDRVT14_NR2_1 U238 ( .A1(cont1[7]), .A2(cont1[6]), .X(n213) );
  SAEDRVT14_ND2_CDC_0P5 U239 ( .A1(n255), .A2(n213), .X(n186) );
  SAEDRVT14_AOI21_0P75 U240 ( .A1(cont1[4]), .A2(n187), .B(n186), .X(n287) );
  SAEDRVT14_NR2_1 U241 ( .A1(stato[3]), .A2(stato[1]), .X(n188) );
  SAEDRVT14_ND3_0P5 U242 ( .A1(stato[2]), .A2(stato[0]), .A3(n188), .X(n224)
         );
  SAEDRVT14_ND3B_0P5 U243 ( .A(stato[3]), .B1(n285), .B2(stato[2]), .X(n275)
         );
  SAEDRVT14_ND2B_U_0P5 U244 ( .A(n275), .B(stato[1]), .X(n283) );
  SAEDRVT14_OAI22_0P5 U245 ( .A1(n287), .A2(n224), .B1(n213), .B2(n283), .X(
        n191) );
  SAEDRVT14_NR2_1 U246 ( .A1(n193), .A2(N245), .X(n189) );
  SAEDRVT14_OAI21_0P5 U247 ( .A1(stato[1]), .A2(n275), .B(n189), .X(n190) );
  SAEDRVT14_AO21_U_0P5 U248 ( .A1(n191), .A2(n234), .B(n190), .X(n297) );
  SAEDRVT14_INV_0P5 U249 ( .A(n297), .X(n306) );
  SAEDRVT14_NR2_1 U250 ( .A1(n192), .A2(n306), .X(n308) );
  SAEDRVT14_INV_0P5 U251 ( .A(n304), .X(n219) );
  SAEDRVT14_AN2_MM_0P5 U252 ( .A1(n193), .A2(n192), .X(n276) );
  SAEDRVT14_ND2_CDC_0P5 U253 ( .A1(r_in[0]), .A2(n276), .X(n217) );
  SAEDRVT14_ND2_CDC_0P5 U254 ( .A1(n276), .A2(n303), .X(n302) );
  SAEDRVT14_OAI22_0P5 U255 ( .A1(n301), .A2(n217), .B1(n197), .B2(n302), .X(
        n194) );
  SAEDRVT14_AOI21_0P75 U256 ( .A1(n219), .A2(r_in[1]), .B(n194), .X(n195) );
  SAEDRVT14_OAI21_0P5 U257 ( .A1(n297), .A2(n250), .B(n195), .X(n196) );
  SAEDRVT14_AO21_U_0P5 U258 ( .A1(C34_DATA3_1), .A2(n308), .B(n196), .X(n144)
         );
  SAEDRVT14_INV_0P5 U259 ( .A(cont[2]), .X(n313) );
  SAEDRVT14_OAI22_0P5 U260 ( .A1(n217), .A2(n197), .B1(n302), .B2(n313), .X(
        n198) );
  SAEDRVT14_AOI21_0P75 U261 ( .A1(n219), .A2(r_in[2]), .B(n198), .X(n199) );
  SAEDRVT14_OAI21_0P5 U262 ( .A1(n297), .A2(n316), .B(n199), .X(n200) );
  SAEDRVT14_AO21_U_0P5 U263 ( .A1(C34_DATA3_2), .A2(n308), .B(n200), .X(n143)
         );
  SAEDRVT14_OAI22_0P5 U264 ( .A1(n217), .A2(n313), .B1(n302), .B2(n204), .X(
        n201) );
  SAEDRVT14_AOI21_0P75 U265 ( .A1(n219), .A2(r_in[3]), .B(n201), .X(n202) );
  SAEDRVT14_OAI21_0P5 U266 ( .A1(n297), .A2(n243), .B(n202), .X(n203) );
  SAEDRVT14_AO21_U_0P5 U267 ( .A1(C34_DATA3_3), .A2(n308), .B(n203), .X(n142)
         );
  SAEDRVT14_INV_0P5 U268 ( .A(cont[4]), .X(n216) );
  SAEDRVT14_OAI22_0P5 U269 ( .A1(n217), .A2(n204), .B1(n302), .B2(n216), .X(
        n205) );
  SAEDRVT14_AOI21_0P75 U270 ( .A1(n219), .A2(r_in[4]), .B(n205), .X(n206) );
  SAEDRVT14_OAI21_0P5 U271 ( .A1(n297), .A2(n238), .B(n206), .X(n207) );
  SAEDRVT14_AO21_U_0P5 U272 ( .A1(C34_DATA3_4), .A2(n308), .B(n207), .X(n141)
         );
  SAEDRVT14_OR3_0P5 U273 ( .A1(n275), .A2(stato[1]), .A3(n208), .X(n270) );
  SAEDRVT14_INV_0P5 U274 ( .A(n270), .X(n265) );
  SAEDRVT14_AOI21_0P75 U276 ( .A1(n282), .A2(stbi), .B(n321), .X(n210) );
  SAEDRVT14_ND2_CDC_0P5 U277 ( .A1(n224), .A2(n210), .X(n215) );
  SAEDRVT14_NR2_1 U278 ( .A1(n212), .A2(n211), .X(n291) );
  SAEDRVT14_INV_0P5 U279 ( .A(n283), .X(n226) );
  SAEDRVT14_OA21_1 U280 ( .A1(N213), .A2(n213), .B(n226), .X(n214) );
  SAEDRVT14_OR4_1 U281 ( .A1(n265), .A2(n215), .A3(n291), .A4(n214), .X(N242)
         );
  SAEDRVT14_NR2_1 U282 ( .A1(n217), .A2(n216), .X(n218) );
  SAEDRVT14_AOI21_0P75 U283 ( .A1(n219), .A2(r_in[5]), .B(n218), .X(n220) );
  SAEDRVT14_OAI21_0P5 U284 ( .A1(n297), .A2(n255), .B(n220), .X(n221) );
  SAEDRVT14_AO21_U_0P5 U285 ( .A1(C34_DATA3_5), .A2(n308), .B(n221), .X(n140)
         );
  SAEDRVT14_INV_0P5 U286 ( .A(cont1[6]), .X(n252) );
  SAEDRVT14_NR2_1 U287 ( .A1(n252), .A2(n297), .X(n222) );
  SAEDRVT14_AO21_U_0P5 U288 ( .A1(C34_DATA3_6), .A2(n308), .B(n222), .X(n139)
         );
  SAEDRVT14_OR3_0P5 U289 ( .A1(n223), .A2(r_in[3]), .A3(n280), .X(n227) );
  SAEDRVT14_INV_0P5 U290 ( .A(n227), .X(n260) );
  SAEDRVT14_INV_0P5 U291 ( .A(n223), .X(n228) );
  SAEDRVT14_AN3_0P5 U292 ( .A1(n228), .A2(n280), .A3(n246), .X(n271) );
  SAEDRVT14_NR3_0P5 U293 ( .A1(r_in[1]), .A2(stato[1]), .A3(n275), .X(n298) );
  SAEDRVT14_INV_0P5 U294 ( .A(n224), .X(n286) );
  SAEDRVT14_OR4_1 U295 ( .A1(n260), .A2(n271), .A3(n298), .A4(n286), .X(C1_Z_0) );
  SAEDRVT14_INV_0P5 U296 ( .A(n298), .X(n293) );
  SAEDRVT14_NR2_1 U297 ( .A1(n293), .A2(n234), .X(n225) );
  SAEDRVT14_EO2_V1_0P75 U298 ( .A1(C1_Z_0), .A2(n225), .X(n230) );
  SAEDRVT14_NR2_1 U299 ( .A1(n226), .A2(n286), .X(n236) );
  SAEDRVT14_ND2_CDC_0P5 U300 ( .A1(n227), .A2(n236), .X(n247) );
  SAEDRVT14_AN3_0P5 U301 ( .A1(n228), .A2(r_in[3]), .A3(n280), .X(n272) );
  SAEDRVT14_NR2_1 U302 ( .A1(n247), .A2(n272), .X(n256) );
  SAEDRVT14_AN3_0P5 U303 ( .A1(n228), .A2(r_in[3]), .A3(r_in[2]), .X(n244) );
  SAEDRVT14_NR2_1 U304 ( .A1(n271), .A2(n244), .X(n237) );
  SAEDRVT14_AN3_0P5 U305 ( .A1(n256), .A2(n237), .A3(n270), .X(n300) );
  SAEDRVT14_NR2_1 U306 ( .A1(n300), .A2(n234), .X(n229) );
  SAEDRVT14_EO2_V1_0P75 U307 ( .A1(n230), .A2(n229), .X(n231) );
  SAEDRVT14_EO2_V1_0P75 U308 ( .A1(DP_OP_65J1_122_1856_n2), .A2(n231), .X(n232) );
  SAEDRVT14_ND2_CDC_0P5 U309 ( .A1(n232), .A2(n308), .X(n233) );
  SAEDRVT14_OAI21_0P5 U310 ( .A1(n297), .A2(n234), .B(n233), .X(n145) );
  SAEDRVT14_INV_0P5 U311 ( .A(cont1[7]), .X(n296) );
  SAEDRVT14_NR2_1 U312 ( .A1(n300), .A2(n296), .X(U7_RSOP_55_C2_Z_7) );
  SAEDRVT14_NR2_1 U313 ( .A1(n300), .A2(n252), .X(U7_RSOP_55_C2_Z_6) );
  SAEDRVT14_ND2_CDC_0P5 U314 ( .A1(r_in[4]), .A2(n298), .X(n235) );
  SAEDRVT14_OAI21_0P5 U315 ( .A1(n300), .A2(n238), .B(n235), .X(
        U7_RSOP_55_C2_Z_4) );
  SAEDRVT14_INV_0P5 U316 ( .A(n236), .X(n240) );
  SAEDRVT14_INV_0P5 U317 ( .A(n237), .X(n264) );
  SAEDRVT14_OAI22_0P5 U318 ( .A1(n270), .A2(n278), .B1(n293), .B2(n238), .X(
        n239) );
  SAEDRVT14_OR3_0P5 U319 ( .A1(n240), .A2(n264), .A3(n239), .X(n241) );
  SAEDRVT14_EO2_V1_0P75 U320 ( .A1(C1_Z_0), .A2(n241), .X(
        DP_OP_65J1_122_1856_n18) );
  SAEDRVT14_ND2_CDC_0P5 U321 ( .A1(r_in[3]), .A2(n298), .X(n242) );
  SAEDRVT14_OAI21_0P5 U322 ( .A1(n300), .A2(n243), .B(n242), .X(
        U7_RSOP_55_C2_Z_3) );
  SAEDRVT14_AOI21_0P75 U323 ( .A1(n298), .A2(cont1[3]), .B(n244), .X(n245) );
  SAEDRVT14_OAI21_0P5 U324 ( .A1(n246), .A2(n270), .B(n245), .X(n248) );
  SAEDRVT14_OR2_MM_0P5 U325 ( .A1(n248), .A2(n247), .X(n249) );
  SAEDRVT14_EO2_V1_0P75 U326 ( .A1(C1_Z_0), .A2(n249), .X(
        DP_OP_65J1_122_1856_n19) );
  SAEDRVT14_NR2_1 U327 ( .A1(n300), .A2(n250), .X(U7_RSOP_55_C2_Z_1) );
  SAEDRVT14_NR2_1 U328 ( .A1(n293), .A2(n296), .X(n251) );
  SAEDRVT14_EO2_V1_0P75 U329 ( .A1(C1_Z_0), .A2(n251), .X(
        DP_OP_65J1_122_1856_n15) );
  SAEDRVT14_NR2_1 U330 ( .A1(n293), .A2(n252), .X(n253) );
  SAEDRVT14_EO2_V1_0P75 U331 ( .A1(C1_Z_0), .A2(n253), .X(
        DP_OP_65J1_122_1856_n16) );
  SAEDRVT14_ND2_CDC_0P5 U332 ( .A1(r_in[5]), .A2(n298), .X(n254) );
  SAEDRVT14_OAI21_0P5 U333 ( .A1(n300), .A2(n255), .B(n254), .X(
        U7_RSOP_55_C2_Z_5) );
  SAEDRVT14_AOI21_0P75 U334 ( .A1(n298), .A2(cont1[1]), .B(n265), .X(n257) );
  SAEDRVT14_ND2_CDC_0P5 U335 ( .A1(n257), .A2(n256), .X(n258) );
  SAEDRVT14_EO2_V1_0P75 U336 ( .A1(C1_Z_0), .A2(n258), .X(
        DP_OP_65J1_122_1856_n21) );
  SAEDRVT14_ND2_CDC_0P5 U337 ( .A1(r_in[0]), .A2(n298), .X(n259) );
  SAEDRVT14_OAI21_0P5 U338 ( .A1(n300), .A2(n269), .B(n259), .X(
        U7_RSOP_55_C2_Z_0) );
  SAEDRVT14_MUX2_U_0P5 U339 ( .D0(r_in[4]), .D1(x_in[4]), .S(n282), .X(n135)
         );
  SAEDRVT14_MUX2_U_0P5 U340 ( .D0(r_in[5]), .D1(x_in[5]), .S(n282), .X(n136)
         );
  SAEDRVT14_MUX2_U_0P5 U341 ( .D0(r_in[0]), .D1(x_in[0]), .S(n282), .X(n137)
         );
  SAEDRVT14_MUX2_U_0P5 U342 ( .D0(r_in[1]), .D1(x_in[1]), .S(n282), .X(n132)
         );
  SAEDRVT14_MUX2_U_0P5 U343 ( .D0(r_in[2]), .D1(x_in[2]), .S(n282), .X(n133)
         );
  SAEDRVT14_MUX2_U_0P5 U344 ( .D0(r_in[3]), .D1(x_in[3]), .S(n282), .X(n134)
         );
  SAEDRVT14_AOI21_0P75 U345 ( .A1(n298), .A2(cont1[5]), .B(n260), .X(n261) );
  SAEDRVT14_OAI21_0P5 U346 ( .A1(n270), .A2(n262), .B(n261), .X(n263) );
  SAEDRVT14_EO2_V1_0P75 U347 ( .A1(C1_Z_0), .A2(n263), .X(
        DP_OP_65J1_122_1856_n17) );
  SAEDRVT14_AOI21_0P75 U348 ( .A1(r_in[2]), .A2(n265), .B(n264), .X(n267) );
  SAEDRVT14_AOI21_0P75 U349 ( .A1(n298), .A2(cont1[2]), .B(n272), .X(n266) );
  SAEDRVT14_ND2_CDC_0P5 U350 ( .A1(n267), .A2(n266), .X(n268) );
  SAEDRVT14_EO2_V1_0P75 U351 ( .A1(C1_Z_0), .A2(n268), .X(
        DP_OP_65J1_122_1856_n20) );
  SAEDRVT14_OAI22_0P5 U352 ( .A1(n303), .A2(n270), .B1(n293), .B2(n269), .X(
        n273) );
  SAEDRVT14_OR3_0P5 U353 ( .A1(n273), .A2(n272), .A3(n271), .X(n274) );
  SAEDRVT14_EO2_V1_0P75 U354 ( .A1(C1_Z_0), .A2(n274), .X(
        DP_OP_65J1_122_1856_n22) );
  SAEDRVT14_INV_0P5 U355 ( .A(n275), .X(n277) );
  SAEDRVT14_OR3_0P5 U356 ( .A1(n277), .A2(n286), .A3(n276), .X(N244) );
  SAEDRVT14_ND2_CDC_0P5 U357 ( .A1(r_in[1]), .A2(r_in[0]), .X(n279) );
  SAEDRVT14_AOI21_0P75 U358 ( .A1(n280), .A2(n279), .B(n278), .X(n281) );
  SAEDRVT14_AOI21_0P75 U359 ( .A1(r_in[3]), .A2(n281), .B(r_in[5]), .X(n292)
         );
  SAEDRVT14_INV_0P5 U360 ( .A(n282), .X(n284) );
  SAEDRVT14_OA31_1 U361 ( .A1(stbi), .A2(n285), .A3(n284), .B(n283), .X(n289)
         );
  SAEDRVT14_OAI21_0P5 U362 ( .A1(N213), .A2(n287), .B(n286), .X(n288) );
  SAEDRVT14_ND2_CDC_0P5 U363 ( .A1(n289), .A2(n288), .X(n290) );
  SAEDRVT14_AOI21_0P75 U364 ( .A1(n292), .A2(n291), .B(n290), .X(n294) );
  SAEDRVT14_ND2_CDC_0P5 U365 ( .A1(n294), .A2(n293), .X(N243) );
  SAEDRVT14_ND2_CDC_0P5 U366 ( .A1(C34_DATA3_7), .A2(n308), .X(n295) );
  SAEDRVT14_OAI21_0P5 U367 ( .A1(n297), .A2(n296), .B(n295), .X(n138) );
  SAEDRVT14_ND2_CDC_0P5 U368 ( .A1(r_in[2]), .A2(n298), .X(n299) );
  SAEDRVT14_OAI21_0P5 U369 ( .A1(n300), .A2(n316), .B(n299), .X(
        U7_RSOP_55_C2_Z_2) );
  SAEDRVT14_OAI22_0P5 U370 ( .A1(n304), .A2(n303), .B1(n302), .B2(n301), .X(
        n305) );
  SAEDRVT14_AOI21_0P75 U371 ( .A1(n306), .A2(N215), .B(n305), .X(n307) );
  SAEDRVT14_AO21B_0P5 U372 ( .A1(n308), .A2(C34_DATA3_0), .B(n307), .X(n146)
         );
  SAEDRVT14_ND2_CDC_0P5 U373 ( .A1(n310), .A2(n309), .X(n311) );
  SAEDRVT14_AO32_U_0P5 U374 ( .A1(n314), .A2(n313), .A3(n312), .B1(cont[2]), 
        .B2(n311), .X(n128) );
  SAEDRVT14_NR2_1 U375 ( .A1(n315), .A2(n316), .X(n318) );
  SAEDRVT14_OAI22_0P5 U376 ( .A1(n318), .A2(n317), .B1(N213), .B2(n316), .X(
        n320) );
  SAEDRVT14_AO32_U_0P5 U377 ( .A1(stato[3]), .A2(n321), .A3(n320), .B1(n319), 
        .B2(x_out[2]), .X(n123) );
  SAEDRVT14_FSDPRBQ_V2LP_1 stato_reg_2_ ( .D(N244), .SI(n119), .SE(n119), .CK(
        clock), .RD(n323), .Q(stato[2]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 stato_reg_3_ ( .D(N245), .SI(n119), .SE(n119), .CK(
        clock), .RD(n323), .Q(stato[3]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 cont_reg_4_ ( .D(n126), .SI(n119), .SE(n119), .CK(
        clock), .RD(n322), .Q(cont[4]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 cont_reg_0_ ( .D(n130), .SI(n119), .SE(n119), .CK(
        clock), .RD(n322), .Q(cont[0]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 cont_reg_3_ ( .D(n127), .SI(n119), .SE(n119), .CK(
        clock), .RD(n322), .Q(cont[3]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 cont_reg_1_ ( .D(n129), .SI(n119), .SE(n119), .CK(
        clock), .RD(n322), .Q(cont[1]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 cont_reg_2_ ( .D(n128), .SI(n119), .SE(n119), .CK(
        clock), .RD(n322), .Q(cont[2]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 cont1_reg_1_ ( .D(n144), .SI(n119), .SE(n119), .CK(
        clock), .RD(n322), .Q(cont1[1]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 cont1_reg_2_ ( .D(n143), .SI(n119), .SE(n119), .CK(
        clock), .RD(n322), .Q(cont1[2]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 cont1_reg_3_ ( .D(n142), .SI(n119), .SE(n119), .CK(
        clock), .RD(n322), .Q(cont1[3]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 r_in_reg_4_ ( .D(n135), .SI(n119), .SE(n119), .CK(
        clock), .RD(n322), .Q(r_in[4]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 r_in_reg_1_ ( .D(n132), .SI(n119), .SE(n119), .CK(
        clock), .RD(n323), .Q(r_in[1]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 r_in_reg_5_ ( .D(n136), .SI(n119), .SE(n119), .CK(
        clock), .RD(n322), .Q(r_in[5]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 r_in_reg_0_ ( .D(n137), .SI(n119), .SE(n119), .CK(
        clock), .RD(n323), .Q(r_in[0]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 r_in_reg_2_ ( .D(n133), .SI(n119), .SE(n119), .CK(
        clock), .RD(n323), .Q(r_in[2]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 cont1_reg_4_ ( .D(n141), .SI(n119), .SE(n119), .CK(
        clock), .RD(n322), .Q(cont1[4]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 stato_reg_0_ ( .D(N242), .SI(n119), .SE(n119), .CK(
        clock), .RD(n323), .Q(stato[0]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 stato_reg_1_ ( .D(N243), .SI(n119), .SE(n119), .CK(
        clock), .RD(n323), .Q(stato[1]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 cont1_reg_5_ ( .D(n140), .SI(n119), .SE(n119), .CK(
        clock), .RD(n322), .Q(cont1[5]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 cont1_reg_6_ ( .D(n139), .SI(n119), .SE(n119), .CK(
        clock), .RD(n322), .Q(cont1[6]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 cont1_reg_7_ ( .D(n138), .SI(n119), .SE(n119), .CK(
        clock), .RD(n322), .Q(cont1[7]) );
  SAEDRVT14_TIE0_V1_2 U161 ( .X(n119) );
  SAEDRVT14_NR2B_U_0P5 U275 ( .A(n209), .B(stato[3]), .X(n282) );
endmodule

