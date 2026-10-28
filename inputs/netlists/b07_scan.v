/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : U-2022.12-SP6
// Date      : Tue Oct  6 14:24:09 2026
/////////////////////////////////////////////////////////////


module b07 ( punti_retta, start, reset, clock, scan_in, scan_out, scan_enable
 );
  output [7:0] punti_retta;
  input start, reset, clock, scan_in, scan_enable;
  output scan_out;
  wire   N104, N105, N106, N107, N108, N109, N171, N172, N173, C28_DATA2_0,
         C28_DATA2_1, C28_DATA2_2, C28_DATA2_3, C28_DATA2_4, C28_DATA2_5,
         C28_DATA2_6, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n147, n148, n149, n150, n151, n152, n153, n154, n155, C1_Z_6,
         C1_Z_5, C1_Z_4, C1_Z_3, C1_Z_2, C1_Z_1, C1_Z_0,
         DP_OP_43J1_122_1413_n7, DP_OP_43J1_122_1413_n6,
         DP_OP_43J1_122_1413_n5, DP_OP_43J1_122_1413_n4,
         DP_OP_43J1_122_1413_n3, DP_OP_43J1_122_1413_n2,
         DP_OP_43J1_122_1413_n1, n158, n159, n160, n161, n162, n163, n164,
         n165, n166, n167, n168, n169, n170, n171, n172, n173, n174, n175,
         n176, n177, n178, n179, n180, n181, n182, n183, n184, n185, n186,
         n187, n188, n189, n190, n191, n192, n193, n194, n195, n196, n197,
         n198, n199, n200, n201, n202, n203, n204, n205, n206, n207, n208,
         n209, n210, n211, n212, n213, n214, n215, n216, n217, n218, n219,
         n220, n221, n222, n223, n224, n225, n226, n227, n228, n229, n230,
         n231, n232, n233, n234, n235, n236, n237, n238, n239, n240, n241,
         n242, n243, n244, n245, n246, n247, n248, n249, n250, n251, n252,
         n253, n254, n255, n256, n257, n258, n259, n260, n261, n262, n263,
         n264, n265, n266, n267, n268, n269, n270, n271, n272, n273, n274,
         n275, n276, n277, n278, n279, n280, n281, n282, n283, n284, n285,
         n286, n287, n288, n289, n290, n291, n292, n293, n294, n295, n296,
         n297;
  wire   [2:0] stato;
  wire   [7:0] cont;
  wire   [3:0] mar;
  wire   [7:6] x;
  wire   [6:0] y;
  wire   [6:1] t;

  SAEDRVT14_FSDPRBQ_V2LP_1 punti_retta_reg_0_ ( .D(n131), .SI(n158), .SE(n158), 
        .CK(clock), .RD(n295), .Q(punti_retta[0]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 punti_retta_reg_1_ ( .D(n130), .SI(n158), .SE(n158), 
        .CK(clock), .RD(n295), .Q(punti_retta[1]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 punti_retta_reg_2_ ( .D(n129), .SI(n158), .SE(n158), 
        .CK(clock), .RD(n295), .Q(punti_retta[2]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 punti_retta_reg_3_ ( .D(n128), .SI(n158), .SE(n158), 
        .CK(clock), .RD(n295), .Q(punti_retta[3]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 punti_retta_reg_4_ ( .D(n127), .SI(n158), .SE(n158), 
        .CK(clock), .RD(n295), .Q(punti_retta[4]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 punti_retta_reg_5_ ( .D(n126), .SI(n158), .SE(n158), 
        .CK(clock), .RD(n295), .Q(punti_retta[5]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 punti_retta_reg_6_ ( .D(n125), .SI(n158), .SE(n158), 
        .CK(clock), .RD(n295), .Q(punti_retta[6]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 punti_retta_reg_7_ ( .D(n124), .SI(n158), .SE(n158), 
        .CK(clock), .RD(n295), .Q(punti_retta[7]) );
  SAEDRVT14_ADDF_V1_1 DP_OP_43J1_122_1413_U6 ( .A(DP_OP_43J1_122_1413_n6), .B(
        N106), .CI(C1_Z_2), .CO(DP_OP_43J1_122_1413_n5), .S(C28_DATA2_2) );
  SAEDRVT14_ADDF_V1_1 DP_OP_43J1_122_1413_U5 ( .A(DP_OP_43J1_122_1413_n5), .B(
        N107), .CI(C1_Z_3), .CO(DP_OP_43J1_122_1413_n4), .S(C28_DATA2_3) );
  SAEDRVT14_ADDF_V1_1 DP_OP_43J1_122_1413_U2 ( .A(DP_OP_43J1_122_1413_n2), .B(
        x[6]), .CI(C1_Z_6), .CO(DP_OP_43J1_122_1413_n1), .S(C28_DATA2_6) );
  SAEDRVT14_FSDPRBQ_V2LP_1 x_reg_6_ ( .D(n152), .SI(n158), .SE(n158), .CK(
        clock), .RD(n297), .Q(x[6]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 y_reg_6_ ( .D(n118), .SI(n158), .SE(n158), .CK(
        clock), .RD(n297), .Q(y[6]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 y_reg_0_ ( .D(n155), .SI(n158), .SE(n158), .CK(
        clock), .RD(n296), .Q(y[0]) );
  SAEDRVT14_ADDH_0P5 DP_OP_43J1_122_1413_U8 ( .A(N104), .B(C1_Z_0), .CO(
        DP_OP_43J1_122_1413_n7), .S(C28_DATA2_0) );
  SAEDRVT14_OAI21_0P5 U164 ( .A1(n255), .A2(n254), .B(n253), .X(n152) );
  SAEDRVT14_OAI21_0P5 U165 ( .A1(n255), .A2(n247), .B(n246), .X(n151) );
  SAEDRVT14_AOI21_0P75 U166 ( .A1(n266), .A2(DP_OP_43J1_122_1413_n1), .B(n265), 
        .X(n267) );
  SAEDRVT14_AOI21_0P75 U167 ( .A1(n266), .A2(C28_DATA2_6), .B(n265), .X(n253)
         );
  SAEDRVT14_OAI21_0P5 U168 ( .A1(n255), .A2(n256), .B(n245), .X(n150) );
  SAEDRVT14_AOI21_0P75 U169 ( .A1(n266), .A2(C28_DATA2_5), .B(n265), .X(n246)
         );
  SAEDRVT14_OAI22_0P5 U170 ( .A1(n293), .A2(n198), .B1(n197), .B2(n220), .X(
        n125) );
  SAEDRVT14_OAI21_0P5 U171 ( .A1(n288), .A2(cont[6]), .B(n196), .X(n197) );
  SAEDRVT14_OAI21_0P5 U172 ( .A1(n255), .A2(n258), .B(n244), .X(n149) );
  SAEDRVT14_AO32_U_0P5 U173 ( .A1(cont[6]), .A2(n283), .A3(n282), .B1(cont[7]), 
        .B2(n281), .X(n132) );
  SAEDRVT14_AOI21_0P75 U174 ( .A1(n266), .A2(C28_DATA2_4), .B(n265), .X(n245)
         );
  SAEDRVT14_EO2_V1_0P75 U175 ( .A1(cont[7]), .A2(n196), .X(n194) );
  SAEDRVT14_OAI22_0P5 U176 ( .A1(n228), .A2(n227), .B1(n273), .B2(n285), .X(
        n136) );
  SAEDRVT14_OAI22_0P5 U177 ( .A1(n293), .A2(n193), .B1(n192), .B2(n220), .X(
        n127) );
  SAEDRVT14_OAI21_0P5 U178 ( .A1(cont[6]), .A2(n280), .B(n279), .X(n281) );
  SAEDRVT14_OAI22_0P5 U179 ( .A1(cont[6]), .A2(n278), .B1(n235), .B2(n279), 
        .X(n133) );
  SAEDRVT14_INV_0P5 U180 ( .A(n278), .X(n282) );
  SAEDRVT14_OAI21_0P5 U181 ( .A1(n255), .A2(n260), .B(n241), .X(n148) );
  SAEDRVT14_ND2_CDC_0P5 U182 ( .A1(n288), .A2(cont[6]), .X(n196) );
  SAEDRVT14_OAI22_0P5 U183 ( .A1(n232), .A2(n231), .B1(n269), .B2(n230), .X(
        n138) );
  SAEDRVT14_AO32_U_0P5 U184 ( .A1(n272), .A2(n271), .A3(n275), .B1(cont[2]), 
        .B2(n270), .X(n137) );
  SAEDRVT14_AOI21_0P75 U185 ( .A1(n290), .A2(n289), .B(n288), .X(n292) );
  SAEDRVT14_AOI21_0P75 U186 ( .A1(n266), .A2(C28_DATA2_3), .B(n265), .X(n244)
         );
  SAEDRVT14_OAI22_0P5 U187 ( .A1(n225), .A2(n224), .B1(n293), .B2(n223), .X(
        n130) );
  SAEDRVT14_MUX2_U_0P5 U188 ( .D0(n233), .D1(n234), .S(cont[5]), .X(n134) );
  SAEDRVT14_ND2_CDC_0P5 U189 ( .A1(n275), .A2(n285), .X(n227) );
  SAEDRVT14_OAI22_0P5 U190 ( .A1(n218), .A2(n205), .B1(n204), .B2(n203), .X(
        n122) );
  SAEDRVT14_ND2_CDC_0P5 U191 ( .A1(cont[5]), .A2(n233), .X(n278) );
  SAEDRVT14_OAI22_0P5 U192 ( .A1(mar[0]), .A2(n218), .B1(n217), .B2(n216), .X(
        n123) );
  SAEDRVT14_OA2BB2_V1_0P5 U193 ( .A1(n266), .A2(C28_DATA2_2), .B1(n240), .B2(
        n242), .X(n241) );
  SAEDRVT14_OAI21_0P5 U194 ( .A1(cont[3]), .A2(n280), .B(n273), .X(n274) );
  SAEDRVT14_OAI21_0P5 U195 ( .A1(n284), .A2(cont[4]), .B(n290), .X(n192) );
  SAEDRVT14_AOI21_0P75 U196 ( .A1(n294), .A2(n289), .B(n234), .X(n279) );
  SAEDRVT14_ND2_CDC_0P5 U197 ( .A1(n275), .A2(n230), .X(n231) );
  SAEDRVT14_OAI22_0P5 U198 ( .A1(n218), .A2(n213), .B1(n236), .B2(n216), .X(
        n121) );
  SAEDRVT14_OAI21_0P5 U199 ( .A1(cont[1]), .A2(n280), .B(n269), .X(n270) );
  SAEDRVT14_OAI21_0P5 U200 ( .A1(cont[1]), .A2(n222), .B(n221), .X(n224) );
  SAEDRVT14_OAI22_0P5 U201 ( .A1(n210), .A2(n209), .B1(n208), .B2(n216), .X(
        n120) );
  SAEDRVT14_NR2_1 U202 ( .A1(n290), .A2(n289), .X(n288) );
  SAEDRVT14_AOI21_0P75 U203 ( .A1(n217), .A2(n206), .B(n207), .X(n204) );
  SAEDRVT14_OAI22_0P5 U204 ( .A1(cont[0]), .A2(n226), .B1(n232), .B2(n214), 
        .X(n139) );
  SAEDRVT14_OAI22_0P5 U205 ( .A1(n293), .A2(n201), .B1(n200), .B2(n220), .X(
        n131) );
  SAEDRVT14_OAI21_0P5 U206 ( .A1(n255), .A2(n263), .B(n239), .X(n153) );
  SAEDRVT14_INV_0P5 U207 ( .A(n220), .X(n221) );
  SAEDRVT14_AO222_1 U208 ( .A1(n266), .A2(C28_DATA2_1), .B1(n237), .B2(n249), 
        .C1(N105), .C2(n268), .X(n147) );
  SAEDRVT14_INV_0P5 U209 ( .A(n226), .X(n275) );
  SAEDRVT14_AO21_U_0P5 U210 ( .A1(n215), .A2(n294), .B(n229), .X(n234) );
  SAEDRVT14_AOI21_0P75 U211 ( .A1(n294), .A2(n232), .B(n229), .X(n269) );
  SAEDRVT14_OAI22_0P5 U212 ( .A1(n293), .A2(n191), .B1(n190), .B2(n220), .X(
        n129) );
  SAEDRVT14_ND2_CDC_0P5 U213 ( .A1(n284), .A2(cont[4]), .X(n290) );
  SAEDRVT14_INV_0P5 U214 ( .A(n207), .X(n216) );
  SAEDRVT14_AOI21_0P75 U215 ( .A1(n294), .A2(n228), .B(n229), .X(n273) );
  SAEDRVT14_AOI21_0P75 U216 ( .A1(n286), .A2(n285), .B(n284), .X(n287) );
  SAEDRVT14_NR2_1 U217 ( .A1(n215), .A2(n226), .X(n233) );
  SAEDRVT14_OAI21_0P5 U218 ( .A1(stato[0]), .A2(n252), .B(n291), .X(N171) );
  SAEDRVT14_NR2_1 U219 ( .A1(n286), .A2(n285), .X(n284) );
  SAEDRVT14_INV_0P5 U220 ( .A(n293), .X(n291) );
  SAEDRVT14_OA2BB2_V1_0P5 U221 ( .A1(n266), .A2(C28_DATA2_0), .B1(n238), .B2(
        n242), .X(n239) );
  SAEDRVT14_ND2_CDC_0P5 U222 ( .A1(n294), .A2(n293), .X(n220) );
  SAEDRVT14_INV_0P5 U223 ( .A(n214), .X(n229) );
  SAEDRVT14_ND2_CDC_0P5 U224 ( .A1(n294), .A2(n214), .X(n226) );
  SAEDRVT14_OAI21_0P5 U225 ( .A1(n225), .A2(cont[2]), .B(n286), .X(n190) );
  SAEDRVT14_NR2_1 U226 ( .A1(n262), .A2(n202), .X(n207) );
  SAEDRVT14_AO21_U_0P5 U227 ( .A1(y[6]), .A2(n175), .B(n162), .X(n118) );
  SAEDRVT14_ND2_CDC_0P5 U228 ( .A1(n186), .A2(n187), .X(n202) );
  SAEDRVT14_OAI21_0P5 U229 ( .A1(n219), .A2(n187), .B(n186), .X(n214) );
  SAEDRVT14_NR2_1 U230 ( .A1(start), .A2(n189), .X(n293) );
  SAEDRVT14_AO21_U_0P5 U231 ( .A1(y[5]), .A2(n175), .B(n162), .X(n117) );
  SAEDRVT14_AO21_U_0P5 U232 ( .A1(y[4]), .A2(n175), .B(n162), .X(n116) );
  SAEDRVT14_ND2_CDC_0P5 U233 ( .A1(n180), .A2(n179), .X(N173) );
  SAEDRVT14_INV_0P5 U234 ( .A(n255), .X(n268) );
  SAEDRVT14_AO21_U_0P5 U235 ( .A1(y[3]), .A2(n175), .B(n162), .X(n115) );
  SAEDRVT14_ND2_CDC_0P5 U236 ( .A1(n225), .A2(cont[2]), .X(n286) );
  SAEDRVT14_ND2_CDC_0P5 U237 ( .A1(cont[4]), .A2(n277), .X(n215) );
  SAEDRVT14_OAI22_0P5 U238 ( .A1(cont[0]), .A2(n199), .B1(n232), .B2(n219), 
        .X(n200) );
  SAEDRVT14_OAI22_0P5 U239 ( .A1(n175), .A2(n261), .B1(n177), .B2(n171), .X(
        C1_Z_3) );
  SAEDRVT14_ND2B_U_0P5 U240 ( .A(n210), .B(n294), .X(n187) );
  SAEDRVT14_NR2_1 U241 ( .A1(n243), .A2(n242), .X(n265) );
  SAEDRVT14_OAI22_0P5 U242 ( .A1(n161), .A2(n240), .B1(n248), .B2(n172), .X(
        n114) );
  SAEDRVT14_AOI21_0P75 U243 ( .A1(n210), .A2(n183), .B(n262), .X(n179) );
  SAEDRVT14_INV_0P5 U244 ( .A(n218), .X(n206) );
  SAEDRVT14_OAI22_0P5 U245 ( .A1(n175), .A2(n259), .B1(n177), .B2(n170), .X(
        C1_Z_4) );
  SAEDRVT14_OAI22_0P5 U246 ( .A1(n161), .A2(n238), .B1(n248), .B2(n176), .X(
        n155) );
  SAEDRVT14_NR2_1 U247 ( .A1(n161), .A2(n243), .X(n162) );
  SAEDRVT14_OAI22_0P5 U248 ( .A1(n175), .A2(n257), .B1(n177), .B2(n169), .X(
        C1_Z_5) );
  SAEDRVT14_OAI22_0P5 U249 ( .A1(n175), .A2(n264), .B1(n177), .B2(n174), .X(
        C1_Z_1) );
  SAEDRVT14_ND2_CDC_0P5 U250 ( .A1(n165), .A2(n180), .X(n255) );
  SAEDRVT14_NR2_1 U251 ( .A1(n177), .A2(n176), .X(C1_Z_0) );
  SAEDRVT14_OAI22_0P5 U252 ( .A1(n175), .A2(n173), .B1(n177), .B2(n172), .X(
        C1_Z_2) );
  SAEDRVT14_AOI21_0P75 U253 ( .A1(n294), .A2(n210), .B(n188), .X(n189) );
  SAEDRVT14_AN2_MM_0P5 U254 ( .A1(n272), .A2(n199), .X(n225) );
  SAEDRVT14_OAI22_0P5 U255 ( .A1(n175), .A2(n168), .B1(n177), .B2(n167), .X(
        C1_Z_6) );
  SAEDRVT14_AOI21_0P75 U256 ( .A1(n160), .A2(n217), .B(n159), .X(n243) );
  SAEDRVT14_MUXI2_U_0P5 U257 ( .D0(n259), .D1(n258), .S(n262), .X(n142) );
  SAEDRVT14_MUX2_U_0P5 U258 ( .D0(t[2]), .D1(N105), .S(n262), .X(n144) );
  SAEDRVT14_INV_0P5 U259 ( .A(n294), .X(n280) );
  SAEDRVT14_MUX2_U_0P5 U260 ( .D0(t[6]), .D1(N109), .S(n262), .X(n140) );
  SAEDRVT14_INV_0P5 U261 ( .A(n237), .X(n165) );
  SAEDRVT14_MUXI2_U_0P5 U262 ( .D0(n261), .D1(n260), .S(n262), .X(n143) );
  SAEDRVT14_OAI21_0P5 U263 ( .A1(mar[2]), .A2(n212), .B(n211), .X(n213) );
  SAEDRVT14_INV_0P5 U264 ( .A(n219), .X(n199) );
  SAEDRVT14_INV_0P5 U265 ( .A(n248), .X(n175) );
  SAEDRVT14_MUXI2_U_0P5 U266 ( .D0(n257), .D1(n256), .S(n262), .X(n141) );
  SAEDRVT14_NR2_1 U267 ( .A1(n285), .A2(n228), .X(n277) );
  SAEDRVT14_NR2_1 U268 ( .A1(n232), .A2(n219), .X(n222) );
  SAEDRVT14_ND2_CDC_0P5 U269 ( .A1(n237), .A2(n236), .X(n242) );
  SAEDRVT14_MUX2_U_0P5 U270 ( .D0(y[1]), .D1(n249), .S(n248), .X(n119) );
  SAEDRVT14_ND2_CDC_0P5 U271 ( .A1(n236), .A2(n248), .X(n161) );
  SAEDRVT14_ND2_CDC_0P5 U272 ( .A1(start), .A2(n188), .X(n186) );
  SAEDRVT14_NR2_1 U273 ( .A1(n294), .A2(n262), .X(n218) );
  SAEDRVT14_NR2_1 U274 ( .A1(n208), .A2(n211), .X(n210) );
  SAEDRVT14_AN2_MM_0P5 U275 ( .A1(n294), .A2(start), .X(n183) );
  SAEDRVT14_NR2_1 U276 ( .A1(n159), .A2(n160), .X(n240) );
  SAEDRVT14_MUXI2_U_0P5 U277 ( .D0(n264), .D1(n263), .S(n262), .X(n145) );
  SAEDRVT14_INV_0P5 U278 ( .A(n182), .X(n177) );
  SAEDRVT14_NR2_1 U279 ( .A1(mar[3]), .A2(n205), .X(n159) );
  SAEDRVT14_ND2_CDC_0P5 U280 ( .A1(n272), .A2(cont[2]), .X(n228) );
  SAEDRVT14_NR2_1 U281 ( .A1(n250), .A2(n181), .X(n262) );
  SAEDRVT14_AOI21_0P75 U282 ( .A1(n164), .A2(mar[1]), .B(n163), .X(n249) );
  SAEDRVT14_NR2_1 U283 ( .A1(n180), .A2(n166), .X(n182) );
  SAEDRVT14_NR2_1 U284 ( .A1(stato[1]), .A2(n181), .X(n188) );
  SAEDRVT14_NR2_1 U285 ( .A1(n180), .A2(stato[0]), .X(n248) );
  SAEDRVT14_ND2_CDC_0P5 U286 ( .A1(mar[2]), .A2(n212), .X(n211) );
  SAEDRVT14_NR2_1 U287 ( .A1(n251), .A2(n178), .X(n294) );
  SAEDRVT14_AOI21_0P75 U288 ( .A1(n208), .A2(n203), .B(n160), .X(n238) );
  SAEDRVT14_NR2_1 U289 ( .A1(stato[2]), .A2(n178), .X(n237) );
  SAEDRVT14_ND2_CDC_0P5 U290 ( .A1(stato[0]), .A2(n251), .X(n181) );
  SAEDRVT14_ND2_CDC_0P5 U291 ( .A1(stato[1]), .A2(n166), .X(n178) );
  SAEDRVT14_ND2_CDC_0P5 U292 ( .A1(N105), .A2(n247), .X(n185) );
  SAEDRVT14_NR2_1 U293 ( .A1(n251), .A2(n250), .X(n252) );
  SAEDRVT14_OAI21_0P5 U294 ( .A1(mar[2]), .A2(n217), .B(mar[3]), .X(n164) );
  SAEDRVT14_INV_0P5 U295 ( .A(n266), .X(n180) );
  SAEDRVT14_ND2_CDC_0P5 U296 ( .A1(mar[0]), .A2(n203), .X(n205) );
  SAEDRVT14_NR2_1 U297 ( .A1(n208), .A2(n203), .X(n160) );
  SAEDRVT14_NR2_1 U298 ( .A1(n232), .A2(n230), .X(n272) );
  SAEDRVT14_NR2_1 U299 ( .A1(n203), .A2(n217), .X(n212) );
  SAEDRVT14_INV_0P5 U300 ( .A(y[5]), .X(n169) );
  SAEDRVT14_INV_0P5 U301 ( .A(t[2]), .X(n173) );
  SAEDRVT14_INV_0P5 U302 ( .A(y[3]), .X(n171) );
  SAEDRVT14_INV_0P5 U303 ( .A(N107), .X(n258) );
  SAEDRVT14_INV_0P5 U304 ( .A(N108), .X(n256) );
  SAEDRVT14_INV_0P5 U305 ( .A(y[4]), .X(n170) );
  SAEDRVT14_INV_0P5 U306 ( .A(mar[2]), .X(n236) );
  SAEDRVT14_INV_0P5 U307 ( .A(y[6]), .X(n167) );
  SAEDRVT14_INV_0P5 U308 ( .A(t[6]), .X(n168) );
  SAEDRVT14_INV_0P5 U309 ( .A(N106), .X(n260) );
  SAEDRVT14_INV_0P5 U310 ( .A(y[1]), .X(n174) );
  SAEDRVT14_INV_0P5 U311 ( .A(punti_retta[7]), .X(n195) );
  SAEDRVT14_INV_0P5 U312 ( .A(N104), .X(n263) );
  SAEDRVT14_INV_0P5 U313 ( .A(x[6]), .X(n254) );
  SAEDRVT14_INV_0P5 U314 ( .A(N109), .X(n247) );
  SAEDRVT14_INV_0P5 U315 ( .A(punti_retta[6]), .X(n198) );
  SAEDRVT14_INV_0P5 U316 ( .A(cont[0]), .X(n232) );
  SAEDRVT14_INV_0P5 U317 ( .A(cont[1]), .X(n230) );
  SAEDRVT14_INV_0P5 U318 ( .A(cont[2]), .X(n271) );
  SAEDRVT14_INV_0P5 U319 ( .A(cont[3]), .X(n285) );
  SAEDRVT14_INV_0P5 U320 ( .A(punti_retta[1]), .X(n223) );
  SAEDRVT14_INV_0P5 U321 ( .A(cont[4]), .X(n276) );
  SAEDRVT14_INV_0P5 U322 ( .A(punti_retta[2]), .X(n191) );
  SAEDRVT14_INV_0P5 U323 ( .A(mar[3]), .X(n208) );
  SAEDRVT14_INV_0P5 U324 ( .A(cont[5]), .X(n289) );
  SAEDRVT14_INV_0P5 U325 ( .A(stato[1]), .X(n250) );
  SAEDRVT14_INV_0P5 U326 ( .A(cont[7]), .X(n283) );
  SAEDRVT14_INV_0P5 U327 ( .A(punti_retta[0]), .X(n201) );
  SAEDRVT14_INV_0P5 U328 ( .A(punti_retta[4]), .X(n193) );
  SAEDRVT14_INV_0P5 U329 ( .A(stato[0]), .X(n166) );
  SAEDRVT14_INV_0P5 U330 ( .A(mar[1]), .X(n203) );
  SAEDRVT14_INV_0P5 U331 ( .A(stato[2]), .X(n251) );
  SAEDRVT14_INV_0P5 U332 ( .A(mar[0]), .X(n217) );
  SAEDRVT14_BUF_S_0P5 U333 ( .A(n297), .X(n295) );
  SAEDRVT14_BUF_S_0P5 U334 ( .A(n297), .X(n296) );
  SAEDRVT14_INV_0P5 U335 ( .A(reset), .X(n297) );
  SAEDRVT14_AN2B_MM_1 U336 ( .B(stato[2]), .A(stato[1]), .X(n266) );
  SAEDRVT14_INV_0P5 U337 ( .A(y[2]), .X(n172) );
  SAEDRVT14_INV_0P5 U338 ( .A(y[0]), .X(n176) );
  SAEDRVT14_AOI21_0P75 U339 ( .A1(n236), .A2(mar[1]), .B(mar[0]), .X(n163) );
  SAEDRVT14_INV_0P5 U340 ( .A(t[5]), .X(n257) );
  SAEDRVT14_INV_0P5 U341 ( .A(t[4]), .X(n259) );
  SAEDRVT14_INV_0P5 U342 ( .A(t[3]), .X(n261) );
  SAEDRVT14_INV_0P5 U343 ( .A(t[1]), .X(n264) );
  SAEDRVT14_OR4_1 U344 ( .A1(n183), .A2(n237), .A3(n182), .A4(n202), .X(N172)
         );
  SAEDRVT14_OR4_1 U345 ( .A1(N106), .A2(N104), .A3(x[6]), .A4(x[7]), .X(n184)
         );
  SAEDRVT14_OR4_1 U346 ( .A1(N107), .A2(N108), .A3(n185), .A4(n184), .X(n219)
         );
  SAEDRVT14_OAI22_0P5 U347 ( .A1(n293), .A2(n195), .B1(n194), .B2(n220), .X(
        n124) );
  SAEDRVT14_AO21B_0P5 U348 ( .A1(n208), .A2(n211), .B(n206), .X(n209) );
  SAEDRVT14_INV_0P5 U349 ( .A(cont[6]), .X(n235) );
  SAEDRVT14_AO21B_0P5 U350 ( .A1(n268), .A2(x[7]), .B(n267), .X(n154) );
  SAEDRVT14_AO32_U_0P5 U351 ( .A1(n277), .A2(n276), .A3(n275), .B1(cont[4]), 
        .B2(n274), .X(n135) );
  SAEDRVT14_AO32_U_0P5 U352 ( .A1(n294), .A2(n293), .A3(n287), .B1(n291), .B2(
        punti_retta[3]), .X(n128) );
  SAEDRVT14_AO32_U_0P5 U353 ( .A1(n294), .A2(n293), .A3(n292), .B1(n291), .B2(
        punti_retta[5]), .X(n126) );
  SAEDRVT14_FSDPRBQ_V2LP_1 y_reg_1_ ( .D(n119), .SI(n158), .SE(n158), .CK(
        clock), .RD(n296), .Q(y[1]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 t_reg_6_ ( .D(n140), .SI(n158), .SE(n158), .CK(
        clock), .RD(n297), .Q(t[6]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 t_reg_2_ ( .D(n144), .SI(n158), .SE(n158), .CK(
        clock), .RD(n296), .Q(t[2]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 t_reg_5_ ( .D(n141), .SI(n158), .SE(n158), .CK(
        clock), .RD(n296), .Q(t[5]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 t_reg_4_ ( .D(n142), .SI(n158), .SE(n158), .CK(
        clock), .RD(n296), .Q(t[4]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 t_reg_3_ ( .D(n143), .SI(n158), .SE(n158), .CK(
        clock), .RD(n296), .Q(t[3]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 t_reg_1_ ( .D(n145), .SI(n158), .SE(n158), .CK(
        clock), .RD(n296), .Q(t[1]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 y_reg_2_ ( .D(n114), .SI(n158), .SE(n158), .CK(
        clock), .RD(n296), .Q(y[2]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 y_reg_5_ ( .D(n117), .SI(n158), .SE(n158), .CK(
        clock), .RD(n296), .Q(y[5]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 y_reg_4_ ( .D(n116), .SI(n158), .SE(n158), .CK(
        clock), .RD(n296), .Q(y[4]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 y_reg_3_ ( .D(n115), .SI(n158), .SE(n158), .CK(
        clock), .RD(n296), .Q(y[3]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 x_reg_0_ ( .D(n153), .SI(n158), .SE(n158), .CK(
        clock), .RD(n297), .Q(N104) );
  SAEDRVT14_FSDPRBQ_V2LP_1 x_reg_1_ ( .D(n147), .SI(n158), .SE(n158), .CK(
        clock), .RD(n295), .Q(N105) );
  SAEDRVT14_FSDPRBQ_V2LP_1 x_reg_2_ ( .D(n148), .SI(n158), .SE(n158), .CK(
        clock), .RD(n297), .Q(N106) );
  SAEDRVT14_FSDPRBQ_V2LP_1 x_reg_3_ ( .D(n149), .SI(n158), .SE(n158), .CK(
        clock), .RD(n297), .Q(N107) );
  SAEDRVT14_FSDPRBQ_V2LP_1 x_reg_4_ ( .D(n150), .SI(n158), .SE(n158), .CK(
        clock), .RD(n297), .Q(N108) );
  SAEDRVT14_FSDPRBQ_V2LP_1 x_reg_5_ ( .D(n151), .SI(n158), .SE(n158), .CK(
        clock), .RD(n297), .Q(N109) );
  SAEDRVT14_FSDPRBQ_V2LP_1 x_reg_7_ ( .D(n154), .SI(n158), .SE(n158), .CK(
        clock), .RD(n296), .Q(x[7]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 stato_reg_2_ ( .D(N173), .SI(n158), .SE(n158), .CK(
        clock), .RD(n297), .Q(stato[2]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 stato_reg_1_ ( .D(N172), .SI(n158), .SE(n158), .CK(
        clock), .RD(n297), .Q(stato[1]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 cont_reg_0_ ( .D(n139), .SI(n158), .SE(n158), .CK(
        clock), .RD(n296), .Q(cont[0]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 stato_reg_0_ ( .D(N171), .SI(n158), .SE(n158), .CK(
        clock), .RD(n297), .Q(stato[0]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 mar_reg_1_ ( .D(n122), .SI(n158), .SE(n158), .CK(
        clock), .RD(n295), .Q(mar[1]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 mar_reg_3_ ( .D(n120), .SI(n158), .SE(n158), .CK(
        clock), .RD(n295), .Q(mar[3]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 cont_reg_5_ ( .D(n134), .SI(n158), .SE(n158), .CK(
        clock), .RD(n295), .Q(cont[5]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 mar_reg_2_ ( .D(n121), .SI(n158), .SE(n158), .CK(
        clock), .RD(n297), .Q(mar[2]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 mar_reg_0_ ( .D(n123), .SI(n158), .SE(n158), .CK(
        clock), .RD(n295), .Q(mar[0]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 cont_reg_4_ ( .D(n135), .SI(n158), .SE(n158), .CK(
        clock), .RD(n296), .Q(cont[4]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 cont_reg_2_ ( .D(n137), .SI(n158), .SE(n158), .CK(
        clock), .RD(n296), .Q(cont[2]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 cont_reg_3_ ( .D(n136), .SI(n158), .SE(n158), .CK(
        clock), .RD(n295), .Q(cont[3]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 cont_reg_6_ ( .D(n133), .SI(n158), .SE(n158), .CK(
        clock), .RD(n296), .Q(cont[6]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 cont_reg_1_ ( .D(n138), .SI(n158), .SE(n158), .CK(
        clock), .RD(n295), .Q(cont[1]) );
  SAEDRVT14_FSDPRBQ_V2LP_1 cont_reg_7_ ( .D(n132), .SI(n158), .SE(n158), .CK(
        clock), .RD(n295), .Q(cont[7]) );
  SAEDRVT14_ADDF_V1_0P5 DP_OP_43J1_122_1413_U7 ( .A(DP_OP_43J1_122_1413_n7), 
        .B(N105), .CI(C1_Z_1), .CO(DP_OP_43J1_122_1413_n6), .S(C28_DATA2_1) );
  SAEDRVT14_ADDF_V1_0P5 DP_OP_43J1_122_1413_U4 ( .A(DP_OP_43J1_122_1413_n4), 
        .B(N108), .CI(C1_Z_4), .CO(DP_OP_43J1_122_1413_n3), .S(C28_DATA2_4) );
  SAEDRVT14_ADDF_V1_0P5 DP_OP_43J1_122_1413_U3 ( .A(DP_OP_43J1_122_1413_n3), 
        .B(N109), .CI(C1_Z_5), .CO(DP_OP_43J1_122_1413_n2), .S(C28_DATA2_5) );
  SAEDRVT14_TIE0_V1_2 U163 ( .X(n158) );
endmodule

