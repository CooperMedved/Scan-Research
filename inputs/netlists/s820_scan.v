/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : U-2022.12-SP6
// Date      : Tue Oct  6 13:56:38 2026
/////////////////////////////////////////////////////////////


module s820 ( CK, G0, G1, G10, G11, G12, G13, G14, G15, G16, G18, G2, G288, 
        G290, G292, G296, G298, G3, G300, G302, G310, G312, G315, G322, G325, 
        G327, G4, G43, G45, G47, G49, G5, G53, G55, G6, G7, G8, G9, scan_in, 
        scan_out, scan_enable );
  input CK, G0, G1, G10, G11, G12, G13, G14, G15, G16, G18, G2, G3, G4, G5, G6,
         G7, G8, G9, scan_in, scan_enable;
  output G288, G290, G292, G296, G298, G300, G302, G310, G312, G315, G322,
         G325, G327, G43, G45, G47, G49, G53, G55, scan_out;
  wire   G325, G38, G90, G39, G93, G40, G96, G41, G99, G102, n140, n141, n142,
         n143, n144, n145, n146, n147, n148, n149, n150, n151, n152, n153,
         n154, n155, n156, n157, n158, n159, n160, n161, n162, n163, n164,
         n165, n166, n167, n168, n169, n170, n171, n172, n173, n174, n175,
         n176, n177, n178, n179, n180, n181, n182, n183, n184, n185, n186,
         n187, n188, n189, n190, n191, n192, n193, n194, n195, n196, n197,
         n198, n199, n200, n201, n202, n203, n204, n205, n206, n207, n208,
         n209, n210, n211, n212, n213, n214, n215, n216, n217, n218, n219,
         n220, n221, n222, n223, n224, n225, n226, n227, n228, n229, n230,
         n231, n232, n233, n234, n235, n236, n237, n238, n239, n240, n241,
         n242, n243, n244, n245, n246, n247, n248, n249, n250, n251, n253,
         n254, n255, n256, n257, n260;
  assign G310 = G325;

  SAEDRVT14_FSDP_V2LP_1 DFF_0_Q_reg ( .D(G90), .SI(scan_in), .SE(scan_enable), 
        .CK(CK), .Q(G38), .QN(n256) );
  SAEDRVT14_FSDP_V2LP_1 DFF_1_Q_reg ( .D(G93), .SI(n256), .SE(scan_enable), 
        .CK(CK), .Q(G39), .QN(n255) );
  SAEDRVT14_FSDP_V2LP_1 DFF_3_Q_reg ( .D(G99), .SI(n260), .SE(scan_enable), 
        .CK(CK), .Q(G41), .QN(n257) );
  SAEDRVT14_FSDP_V2LP_1 DFF_2_Q_reg ( .D(G96), .SI(n255), .SE(scan_enable), 
        .CK(CK), .Q(G40), .QN(n253) );
  SAEDRVT14_FSDP_V2LP_1 DFF_4_Q_reg ( .D(G102), .SI(n257), .SE(scan_enable), 
        .CK(CK), .Q(scan_out), .QN(n254) );
  SAEDRVT14_ND2_CDC_0P5 U161 ( .A1(n254), .A2(n253), .X(n176) );
  SAEDRVT14_ND2_CDC_0P5 U162 ( .A1(G41), .A2(scan_out), .X(n239) );
  SAEDRVT14_OAI21_0P5 U165 ( .A1(n260), .A2(n256), .B(n205), .X(n206) );
  SAEDRVT14_ND2_CDC_0P5 U166 ( .A1(G38), .A2(n217), .X(n167) );
  SAEDRVT14_ND2_CDC_0P5 U167 ( .A1(n257), .A2(n254), .X(n234) );
  SAEDRVT14_ND2_CDC_0P5 U168 ( .A1(n237), .A2(n257), .X(n171) );
  SAEDRVT14_ND2_CDC_0P5 U169 ( .A1(n233), .A2(n254), .X(n159) );
  SAEDRVT14_ND2_CDC_0P5 U170 ( .A1(G4), .A2(G49), .X(n240) );
  SAEDRVT14_AOI21_0P75 U171 ( .A1(G4), .A2(G49), .B(G298), .X(n227) );
  SAEDRVT14_AN2_MM_0P5 U173 ( .A1(G43), .A2(G14), .X(G298) );
  SAEDRVT14_OAI21_0P5 U174 ( .A1(G40), .A2(G15), .B(n220), .X(n222) );
  SAEDRVT14_NR2_1 U175 ( .A1(G296), .A2(n184), .X(n158) );
  SAEDRVT14_ND2_CDC_0P5 U176 ( .A1(n251), .A2(n250), .X(G315) );
  SAEDRVT14_NR2_1 U177 ( .A1(n257), .A2(n159), .X(G296) );
  SAEDRVT14_AN2_MM_0P5 U178 ( .A1(G15), .A2(G53), .X(G43) );
  SAEDRVT14_AOI21_0P75 U179 ( .A1(n207), .A2(n206), .B(G39), .X(n238) );
  SAEDRVT14_ND2_CDC_0P5 U180 ( .A1(G325), .A2(n161), .X(n228) );
  SAEDRVT14_NR2_1 U181 ( .A1(G5), .A2(n235), .X(G47) );
  SAEDRVT14_AN3_0P5 U182 ( .A1(n205), .A2(n191), .A3(n190), .X(G292) );
  SAEDRVT14_OAI21_0P5 U183 ( .A1(G16), .A2(n205), .B(n191), .X(n165) );
  SAEDRVT14_NR2_1 U184 ( .A1(n246), .A2(n250), .X(G312) );
  SAEDRVT14_AOI21_0P75 U185 ( .A1(G40), .A2(n256), .B(n205), .X(n199) );
  SAEDRVT14_AN4_0P5 U186 ( .A1(G41), .A2(n243), .A3(n256), .A4(n255), .X(G53)
         );
  SAEDRVT14_ND2_CDC_0P5 U187 ( .A1(n243), .A2(n193), .X(n251) );
  SAEDRVT14_OAI21_0P5 U188 ( .A1(G41), .A2(n194), .B(n243), .X(n200) );
  SAEDRVT14_NR2_1 U189 ( .A1(G38), .A2(n171), .X(G325) );
  SAEDRVT14_NR2_1 U190 ( .A1(n255), .A2(n207), .X(n233) );
  SAEDRVT14_AOI21_0P75 U191 ( .A1(G40), .A2(n244), .B(n246), .X(n175) );
  SAEDRVT14_NR2_1 U192 ( .A1(G4), .A2(n204), .X(n191) );
  SAEDRVT14_OAI21_0P5 U193 ( .A1(G4), .A2(n257), .B(n169), .X(n170) );
  SAEDRVT14_NR2_1 U194 ( .A1(n172), .A2(G38), .X(n193) );
  SAEDRVT14_ND2_CDC_0P5 U195 ( .A1(n160), .A2(n255), .X(n183) );
  SAEDRVT14_NR2_1 U196 ( .A1(G16), .A2(n179), .X(n194) );
  SAEDRVT14_NR2_1 U197 ( .A1(n257), .A2(n246), .X(n156) );
  SAEDRVT14_NR2_1 U198 ( .A1(scan_out), .A2(G39), .X(n142) );
  SAEDRVT14_NR2_1 U199 ( .A1(n173), .A2(G38), .X(n192) );
  SAEDRVT14_ND2_CDC_0P5 U200 ( .A1(G38), .A2(G16), .X(n146) );
  SAEDRVT14_AN3_0P5 U201 ( .A1(scan_out), .A2(G40), .A3(G39), .X(n237) );
  SAEDRVT14_ND2_CDC_0P5 U202 ( .A1(n257), .A2(n255), .X(n172) );
  SAEDRVT14_NR2_1 U203 ( .A1(G4), .A2(n253), .X(n160) );
  SAEDRVT14_NR2_1 U204 ( .A1(G38), .A2(n257), .X(n236) );
  SAEDRVT14_AN4_0P5 U205 ( .A1(G38), .A2(G39), .A3(n254), .A4(n257), .X(n208)
         );
  SAEDRVT14_OAI21_0P5 U206 ( .A1(G41), .A2(G5), .B(G39), .X(n169) );
  SAEDRVT14_AOI21_0P75 U207 ( .A1(n254), .A2(n195), .B(n257), .X(n196) );
  SAEDRVT14_AOI21_0P75 U208 ( .A1(G39), .A2(G15), .B(G40), .X(n213) );
  SAEDRVT14_OAI21_0P5 U209 ( .A1(G14), .A2(n173), .B(G41), .X(n177) );
  SAEDRVT14_OAI21_0P5 U210 ( .A1(n260), .A2(n217), .B(G38), .X(n218) );
  SAEDRVT14_OAI21_0P5 U211 ( .A1(scan_out), .A2(n257), .B(n260), .X(n149) );
  SAEDRVT14_ND2_CDC_0P5 U212 ( .A1(n256), .A2(n173), .X(n214) );
  SAEDRVT14_NR2_1 U213 ( .A1(G1), .A2(G3), .X(n161) );
  SAEDRVT14_AN4_0P5 U214 ( .A1(G9), .A2(G6), .A3(G7), .A4(G8), .X(n217) );
  SAEDRVT14_INV_0P5 U215 ( .A(G0), .X(n140) );
  SAEDRVT14_AN4_0P5 U216 ( .A1(G41), .A2(G38), .A3(n237), .A4(n140), .X(n184)
         );
  SAEDRVT14_INV_0P5 U217 ( .A(G15), .X(n173) );
  SAEDRVT14_INV_0P5 U218 ( .A(G16), .X(n246) );
  SAEDRVT14_AO32_U_0P5 U219 ( .A1(n160), .A2(G10), .A3(G12), .B1(n160), .B2(
        G11), .X(n141) );
  SAEDRVT14_AN4_0P5 U220 ( .A1(n192), .A2(n142), .A3(n156), .A4(n141), .X(n249) );
  SAEDRVT14_INV_0P5 U221 ( .A(G1), .X(n247) );
  SAEDRVT14_ND2_CDC_0P5 U222 ( .A1(n247), .A2(n246), .X(n144) );
  SAEDRVT14_INV_0P5 U223 ( .A(n146), .X(n143) );
  SAEDRVT14_OAI22_0P5 U224 ( .A1(G38), .A2(n144), .B1(n143), .B2(n254), .X(
        n153) );
  SAEDRVT14_AOI21_0P75 U225 ( .A1(G0), .A2(n254), .B(n172), .X(n145) );
  SAEDRVT14_OAI21_0P5 U226 ( .A1(n193), .A2(n145), .B(n253), .X(n152) );
  SAEDRVT14_INV_0P5 U227 ( .A(n172), .X(n147) );
  SAEDRVT14_OR4_1 U228 ( .A1(n237), .A2(n147), .A3(G4), .A4(n146), .X(n148) );
  SAEDRVT14_AOI21_0P75 U229 ( .A1(n204), .A2(n149), .B(n148), .X(n150) );
  SAEDRVT14_AOI21_0P75 U230 ( .A1(G1), .A2(G325), .B(n150), .X(n151) );
  SAEDRVT14_OAI21_0P5 U231 ( .A1(n153), .A2(n152), .B(n151), .X(n154) );
  SAEDRVT14_INV_0P5 U232 ( .A(G18), .X(n229) );
  SAEDRVT14_OA31_1 U233 ( .A1(n184), .A2(n249), .A3(n154), .B(n229), .X(G90)
         );
  SAEDRVT14_AOI21_0P75 U234 ( .A1(G10), .A2(G11), .B(G12), .X(n155) );
  SAEDRVT14_OR2_MM_0P5 U235 ( .A1(G10), .A2(G11), .X(n195) );
  SAEDRVT14_AOI21_0P75 U236 ( .A1(n155), .A2(n195), .B(G38), .X(n157) );
  SAEDRVT14_OAI21_0P5 U237 ( .A1(scan_out), .A2(n157), .B(n156), .X(n164) );
  SAEDRVT14_INV_0P5 U238 ( .A(n176), .X(n243) );
  SAEDRVT14_INV_0P5 U239 ( .A(n251), .X(n248) );
  SAEDRVT14_ND2_CDC_0P5 U240 ( .A1(G2), .A2(n161), .X(n179) );
  SAEDRVT14_OAI21_0P5 U241 ( .A1(G5), .A2(n159), .B(n158), .X(n231) );
  SAEDRVT14_AOI21_0P75 U242 ( .A1(n208), .A2(n160), .B(n231), .X(n162) );
  SAEDRVT14_ND2_CDC_0P5 U243 ( .A1(n162), .A2(n228), .X(n203) );
  SAEDRVT14_AOI21_0P75 U244 ( .A1(n248), .A2(n194), .B(n203), .X(n163) );
  SAEDRVT14_OA31_1 U245 ( .A1(n173), .A2(n183), .A3(n164), .B(n163), .X(n166)
         );
  SAEDRVT14_INV_0P5 U246 ( .A(n239), .X(n205) );
  SAEDRVT14_AOI21_0P75 U247 ( .A1(n166), .A2(n165), .B(G18), .X(G93) );
  SAEDRVT14_OAI21_0P5 U248 ( .A1(n173), .A2(n167), .B(G16), .X(n190) );
  SAEDRVT14_OR4_1 U249 ( .A1(G4), .A2(n260), .A3(n257), .A4(n190), .X(n168) );
  SAEDRVT14_AOI21_0P75 U250 ( .A1(n255), .A2(n214), .B(n168), .X(n189) );
  SAEDRVT14_AO32_U_0P5 U251 ( .A1(n170), .A2(G41), .A3(n246), .B1(n170), .B2(
        n254), .X(n182) );
  SAEDRVT14_OA31_1 U252 ( .A1(n260), .A2(G16), .A3(n172), .B(n171), .X(n180)
         );
  SAEDRVT14_AN3_0P5 U253 ( .A1(scan_out), .A2(G15), .A3(n257), .X(n244) );
  SAEDRVT14_OA21_1 U254 ( .A1(n260), .A2(n205), .B(G4), .X(n174) );
  SAEDRVT14_AO221_0P5 U255 ( .A1(n243), .A2(n177), .B1(n176), .B2(n175), .C(
        n174), .X(n178) );
  SAEDRVT14_OAI22_0P5 U256 ( .A1(n180), .A2(n179), .B1(G39), .B2(n178), .X(
        n181) );
  SAEDRVT14_AO32_U_0P5 U257 ( .A1(n256), .A2(G40), .A3(n182), .B1(n256), .B2(
        n181), .X(n188) );
  SAEDRVT14_AN2_MM_0P5 U258 ( .A1(G15), .A2(G13), .X(n215) );
  SAEDRVT14_AOI21_0P75 U259 ( .A1(G16), .A2(n215), .B(n183), .X(n186) );
  SAEDRVT14_AO32_U_0P5 U260 ( .A1(n191), .A2(G15), .A3(n234), .B1(n191), .B2(
        n246), .X(n185) );
  SAEDRVT14_AO221_0P5 U261 ( .A1(n205), .A2(n186), .B1(n239), .B2(n185), .C(
        n184), .X(n187) );
  SAEDRVT14_OA31_1 U262 ( .A1(n189), .A2(n188), .A3(n187), .B(n229), .X(G99)
         );
  SAEDRVT14_INV_0P5 U263 ( .A(n192), .X(n216) );
  SAEDRVT14_INV_0P5 U264 ( .A(n193), .X(n212) );
  SAEDRVT14_OA31_1 U265 ( .A1(G39), .A2(G14), .A3(n216), .B(n212), .X(n201) );
  SAEDRVT14_AO32_U_0P5 U266 ( .A1(G15), .A2(G40), .A3(n196), .B1(n253), .B2(
        n216), .X(n197) );
  SAEDRVT14_OR4_1 U267 ( .A1(G39), .A2(G4), .A3(n246), .A4(n197), .X(n198) );
  SAEDRVT14_OAI22_0P5 U268 ( .A1(n201), .A2(n200), .B1(n199), .B2(n198), .X(
        n202) );
  SAEDRVT14_OA31_1 U269 ( .A1(G292), .A2(n203), .A3(n202), .B(n229), .X(G96)
         );
  SAEDRVT14_INV_0P5 U270 ( .A(n204), .X(n245) );
  SAEDRVT14_ND2_CDC_0P5 U271 ( .A1(G9), .A2(G6), .X(n210) );
  SAEDRVT14_OR4_1 U272 ( .A1(G8), .A2(G7), .A3(n253), .A4(n216), .X(n209) );
  SAEDRVT14_OR4_1 U273 ( .A1(scan_out), .A2(G39), .A3(n210), .A4(n209), .X(
        n211) );
  SAEDRVT14_OA31_1 U274 ( .A1(G40), .A2(G1), .A3(n212), .B(n211), .X(n226) );
  SAEDRVT14_OAI22_0P5 U275 ( .A1(scan_out), .A2(G15), .B1(n243), .B2(n213), 
        .X(n221) );
  SAEDRVT14_OAI22_0P5 U276 ( .A1(G39), .A2(n214), .B1(G41), .B2(n221), .X(n224) );
  SAEDRVT14_OAI22_0P5 U277 ( .A1(scan_out), .A2(n216), .B1(n254), .B2(n215), 
        .X(n219) );
  SAEDRVT14_AO32_U_0P5 U278 ( .A1(n260), .A2(n255), .A3(n219), .B1(G39), .B2(
        n218), .X(n220) );
  SAEDRVT14_OAI22_0P5 U279 ( .A1(n257), .A2(n222), .B1(n255), .B2(n221), .X(
        n223) );
  SAEDRVT14_AOI21_0P75 U280 ( .A1(scan_out), .A2(n224), .B(n223), .X(n225) );
  SAEDRVT14_AOI21_0P75 U281 ( .A1(n226), .A2(n225), .B(n246), .X(n232) );
  SAEDRVT14_OAI21_0P5 U282 ( .A1(G2), .A2(n228), .B(n227), .X(n230) );
  SAEDRVT14_OA31_1 U283 ( .A1(n232), .A2(n231), .A3(n230), .B(n229), .X(G102)
         );
  SAEDRVT14_ND2B_U_0P5 U284 ( .A(n234), .B(n233), .X(n235) );
  SAEDRVT14_INV_0P5 U285 ( .A(n235), .X(G288) );
  SAEDRVT14_OA21_1 U286 ( .A1(G325), .A2(n248), .B(G1), .X(G322) );
  SAEDRVT14_ND2_CDC_0P5 U287 ( .A1(n237), .A2(n236), .X(n250) );
  SAEDRVT14_AOI21_0P75 U288 ( .A1(n245), .A2(n239), .B(n238), .X(n242) );
  SAEDRVT14_OA31_1 U289 ( .A1(G1), .A2(n246), .A3(n251), .B(n240), .X(n241) );
  SAEDRVT14_OAI21_0P5 U290 ( .A1(G16), .A2(n242), .B(n241), .X(G302) );
  SAEDRVT14_AN2_MM_0P5 U291 ( .A1(G5), .A2(G288), .X(G55) );
  SAEDRVT14_AN4_0P5 U292 ( .A1(G39), .A2(G15), .A3(n243), .A4(n257), .X(G290)
         );
  SAEDRVT14_AN2_MM_0P5 U293 ( .A1(n245), .A2(n244), .X(G327) );
  SAEDRVT14_AN4_0P5 U294 ( .A1(G3), .A2(n248), .A3(n247), .A4(n246), .X(G300)
         );
  SAEDRVT14_OA21_1 U295 ( .A1(G12), .A2(G10), .B(n249), .X(G45) );
  SAEDRVT14_ND2_CDC_0P5 U160 ( .A1(G40), .A2(n256), .X(n207) );
  SAEDRVT14_ND2_CDC_0P5 U163 ( .A1(n253), .A2(G39), .X(n204) );
  SAEDRVT14_OR3_0P5 U164 ( .A1(n245), .A2(n238), .A3(n208), .X(G49) );
  SAEDRVT14_BUF_S_0P5 U172 ( .A(G40), .X(n260) );
endmodule

