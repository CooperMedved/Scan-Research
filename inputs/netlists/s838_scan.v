/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : U-2022.12-SP6
// Date      : Tue Oct  6 13:57:39 2026
/////////////////////////////////////////////////////////////


module s838 ( CK, C_0, C_1, C_10, C_11, C_12, C_13, C_14, C_15, C_16, C_17, 
        C_18, C_19, C_2, C_20, C_21, C_22, C_23, C_24, C_25, C_26, C_27, C_28, 
        C_29, C_3, C_30, C_31, C_32, C_4, C_5, C_6, C_7, C_8, C_9, P_0, Z, 
        scan_in, scan_out, scan_enable );
  input CK, C_0, C_1, C_10, C_11, C_12, C_13, C_14, C_15, C_16, C_17, C_18,
         C_19, C_2, C_20, C_21, C_22, C_23, C_24, C_25, C_26, C_27, C_28, C_29,
         C_3, C_30, C_31, C_32, C_4, C_5, C_6, C_7, C_8, C_9, P_0, scan_in,
         scan_enable;
  output Z, scan_out;
  wire   X_4, X_3, I13, X_2, I14, X_1, I15, X_8, X_7, I111, X_6, I112, X_5,
         I113, X_12, X_11, I209, X_10, I210, X_9, I211, X_16, X_15, I307, X_14,
         I308, X_13, I309, X_20, X_19, I405, X_18, I406, I407, X_24, X_23,
         I503, X_22, I504, X_21, I505, X_28, X_27, I601, X_26, I602, X_25,
         I603, X_32, X_31, X_30, I700, I701, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n186, n187, n188, n189,
         n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200,
         n201, n202, n203, n204, n205, n206, n207, n208, n209, n210, n211,
         n212, n214, n215, n216, n217, n218, n219, n220, n221, n222, n223,
         n224, n225, n226, n228, n229, n230, n231;

  SAEDRVT14_FSDP_V2LP_1 DFF_3_Q_reg ( .D(I15), .SI(n198), .SE(scan_enable), 
        .CK(CK), .Q(X_1), .QN(n197) );
  SAEDRVT14_FSDP_V2LP_1 DFF_2_Q_reg ( .D(I14), .SI(X_3), .SE(scan_enable), 
        .CK(CK), .Q(X_2), .QN(n198) );
  SAEDRVT14_FSDP_V2LP_1 DFF_1_Q_reg ( .D(I13), .SI(n226), .SE(scan_enable), 
        .CK(CK), .Q(X_3), .QN(n199) );
  SAEDRVT14_FSDP_V2LP_1 DFF_0_Q_reg ( .D(n192), .SI(scan_in), .SE(scan_enable), 
        .CK(CK), .Q(X_4), .QN(n226) );
  SAEDRVT14_FSDP_V2LP_1 DFF_7_Q_reg ( .D(I113), .SI(n195), .SE(scan_enable), 
        .CK(CK), .Q(X_5), .QN(n196) );
  SAEDRVT14_FSDP_V2LP_1 DFF_6_Q_reg ( .D(I112), .SI(X_7), .SE(scan_enable), 
        .CK(CK), .Q(X_6), .QN(n195) );
  SAEDRVT14_FSDP_V2LP_1 DFF_5_Q_reg ( .D(I111), .SI(n225), .SE(scan_enable), 
        .CK(CK), .Q(X_7), .QN(n194) );
  SAEDRVT14_FSDP_V2LP_1 DFF_4_Q_reg ( .D(n191), .SI(n197), .SE(scan_enable), 
        .CK(CK), .Q(X_8), .QN(n225) );
  SAEDRVT14_FSDP_V2LP_1 DFF_11_Q_reg ( .D(I211), .SI(n223), .SE(n231), .CK(CK), 
        .Q(X_9), .QN(n201) );
  SAEDRVT14_FSDP_V2LP_1 DFF_10_Q_reg ( .D(I210), .SI(X_11), .SE(n229), .CK(CK), 
        .Q(X_10), .QN(n223) );
  SAEDRVT14_FSDP_V2LP_1 DFF_9_Q_reg ( .D(I209), .SI(n224), .SE(n230), .CK(CK), 
        .Q(X_11), .QN(n200) );
  SAEDRVT14_FSDP_V2LP_1 DFF_8_Q_reg ( .D(n190), .SI(n196), .SE(n231), .CK(CK), 
        .Q(X_12), .QN(n224) );
  SAEDRVT14_FSDP_V2LP_1 DFF_15_Q_reg ( .D(I309), .SI(n203), .SE(n230), .CK(CK), 
        .Q(X_13), .QN(n204) );
  SAEDRVT14_FSDP_V2LP_1 DFF_14_Q_reg ( .D(I308), .SI(X_15), .SE(n231), .CK(CK), 
        .Q(X_14), .QN(n203) );
  SAEDRVT14_FSDP_V2LP_1 DFF_13_Q_reg ( .D(I307), .SI(n222), .SE(n229), .CK(CK), 
        .Q(X_15), .QN(n202) );
  SAEDRVT14_FSDP_V2LP_1 DFF_12_Q_reg ( .D(n189), .SI(n201), .SE(n230), .CK(CK), 
        .Q(X_16), .QN(n222) );
  SAEDRVT14_FSDP_V2LP_1 DFF_19_Q_reg ( .D(I407), .SI(n220), .SE(n229), .CK(CK), 
        .Q(n219), .QN(n211) );
  SAEDRVT14_FSDP_V2LP_1 DFF_18_Q_reg ( .D(I406), .SI(X_19), .SE(n230), .CK(CK), 
        .Q(X_18), .QN(n220) );
  SAEDRVT14_FSDP_V2LP_1 DFF_17_Q_reg ( .D(I405), .SI(n221), .SE(n231), .CK(CK), 
        .Q(X_19), .QN(n210) );
  SAEDRVT14_FSDP_V2LP_1 DFF_16_Q_reg ( .D(n188), .SI(n204), .SE(n229), .CK(CK), 
        .Q(X_20), .QN(n221) );
  SAEDRVT14_FSDP_V2LP_1 DFF_23_Q_reg ( .D(I505), .SI(n217), .SE(n231), .CK(CK), 
        .Q(X_21), .QN(n209) );
  SAEDRVT14_FSDP_V2LP_1 DFF_22_Q_reg ( .D(I504), .SI(X_23), .SE(n229), .CK(CK), 
        .Q(X_22), .QN(n217) );
  SAEDRVT14_FSDP_V2LP_1 DFF_21_Q_reg ( .D(I503), .SI(n218), .SE(n230), .CK(CK), 
        .Q(X_23), .QN(n208) );
  SAEDRVT14_FSDP_V2LP_1 DFF_20_Q_reg ( .D(n187), .SI(n219), .SE(n231), .CK(CK), 
        .Q(X_24), .QN(n218) );
  SAEDRVT14_FSDP_V2LP_1 DFF_27_Q_reg ( .D(I603), .SI(n206), .SE(n230), .CK(CK), 
        .Q(X_25), .QN(n193) );
  SAEDRVT14_FSDP_V2LP_1 DFF_26_Q_reg ( .D(I602), .SI(X_27), .SE(n231), .CK(CK), 
        .Q(X_26), .QN(n206) );
  SAEDRVT14_FSDP_V2LP_1 DFF_25_Q_reg ( .D(I601), .SI(n216), .SE(n229), .CK(CK), 
        .Q(X_27), .QN(n205) );
  SAEDRVT14_FSDP_V2LP_1 DFF_24_Q_reg ( .D(n186), .SI(X_21), .SE(n230), .CK(CK), 
        .Q(X_28), .QN(n216) );
  SAEDRVT14_FSDP_V2LP_1 DFF_31_Q_reg ( .D(I701), .SI(n214), .SE(n229), .CK(CK), 
        .Q(scan_out), .QN(n207) );
  SAEDRVT14_FSDP_V2LP_1 DFF_30_Q_reg ( .D(I700), .SI(X_31), .SE(n230), .CK(CK), 
        .Q(X_30), .QN(n214) );
  SAEDRVT14_FSDP_V2LP_1 DFF_29_Q_reg ( .D(n184), .SI(n215), .SE(n231), .CK(CK), 
        .Q(X_31), .QN(n212) );
  SAEDRVT14_FSDP_V2LP_1 DFF_28_Q_reg ( .D(n183), .SI(n193), .SE(n229), .CK(CK), 
        .Q(X_32), .QN(n215) );
  SAEDRVT14_INV_0P5 U132 ( .A(P_0), .X(n107) );
  SAEDRVT14_NR2_1 U133 ( .A1(n197), .A2(n107), .X(n169) );
  SAEDRVT14_AOI21_0P75 U134 ( .A1(n197), .A2(n107), .B(n169), .X(I15) );
  SAEDRVT14_ND2_CDC_0P5 U135 ( .A1(n169), .A2(X_2), .X(n168) );
  SAEDRVT14_NR2_1 U136 ( .A1(n168), .A2(n199), .X(n159) );
  SAEDRVT14_AOI21_0P75 U137 ( .A1(n168), .A2(n199), .B(n159), .X(I13) );
  SAEDRVT14_ND2_CDC_0P5 U138 ( .A1(n159), .A2(X_4), .X(n158) );
  SAEDRVT14_NR2_1 U139 ( .A1(n158), .A2(n196), .X(n108) );
  SAEDRVT14_AOI21_0P75 U140 ( .A1(n158), .A2(n196), .B(n108), .X(I113) );
  SAEDRVT14_ND2_CDC_0P5 U141 ( .A1(n108), .A2(X_6), .X(n109) );
  SAEDRVT14_OA21_1 U142 ( .A1(n108), .A2(X_6), .B(n109), .X(I112) );
  SAEDRVT14_NR2_1 U143 ( .A1(n109), .A2(n194), .X(n182) );
  SAEDRVT14_AOI21_0P75 U144 ( .A1(n109), .A2(n194), .B(n182), .X(I111) );
  SAEDRVT14_ND2_CDC_0P5 U145 ( .A1(n182), .A2(X_8), .X(n181) );
  SAEDRVT14_NR2_1 U146 ( .A1(n181), .A2(n201), .X(n161) );
  SAEDRVT14_AOI21_0P75 U147 ( .A1(n181), .A2(n201), .B(n161), .X(I211) );
  SAEDRVT14_ND2_CDC_0P5 U148 ( .A1(n161), .A2(X_10), .X(n160) );
  SAEDRVT14_NR2_1 U149 ( .A1(n160), .A2(n200), .X(n180) );
  SAEDRVT14_AOI21_0P75 U150 ( .A1(n160), .A2(n200), .B(n180), .X(I209) );
  SAEDRVT14_ND2_CDC_0P5 U151 ( .A1(n180), .A2(X_12), .X(n179) );
  SAEDRVT14_NR2_1 U152 ( .A1(n179), .A2(n204), .X(n110) );
  SAEDRVT14_AOI21_0P75 U153 ( .A1(n179), .A2(n204), .B(n110), .X(I309) );
  SAEDRVT14_ND2_CDC_0P5 U154 ( .A1(n110), .A2(X_14), .X(n111) );
  SAEDRVT14_OA21_1 U155 ( .A1(n110), .A2(X_14), .B(n111), .X(I308) );
  SAEDRVT14_NR2_1 U156 ( .A1(n111), .A2(n202), .X(n178) );
  SAEDRVT14_AOI21_0P75 U157 ( .A1(n111), .A2(n202), .B(n178), .X(I307) );
  SAEDRVT14_ND2_CDC_0P5 U158 ( .A1(n178), .A2(X_16), .X(n177) );
  SAEDRVT14_NR2_1 U159 ( .A1(n177), .A2(n211), .X(n171) );
  SAEDRVT14_AOI21_0P75 U160 ( .A1(n177), .A2(n211), .B(n171), .X(I407) );
  SAEDRVT14_ND2_CDC_0P5 U161 ( .A1(n171), .A2(X_18), .X(n170) );
  SAEDRVT14_NR2_1 U162 ( .A1(n170), .A2(n210), .X(n163) );
  SAEDRVT14_AOI21_0P75 U163 ( .A1(n170), .A2(n210), .B(n163), .X(I405) );
  SAEDRVT14_ND2_CDC_0P5 U164 ( .A1(n163), .A2(X_20), .X(n162) );
  SAEDRVT14_NR2_1 U165 ( .A1(n162), .A2(n209), .X(n165) );
  SAEDRVT14_AOI21_0P75 U166 ( .A1(n162), .A2(n209), .B(n165), .X(I505) );
  SAEDRVT14_ND2_CDC_0P5 U167 ( .A1(n165), .A2(X_22), .X(n164) );
  SAEDRVT14_NR2_1 U168 ( .A1(n164), .A2(n208), .X(n167) );
  SAEDRVT14_AOI21_0P75 U169 ( .A1(n164), .A2(n208), .B(n167), .X(I503) );
  SAEDRVT14_ND2_CDC_0P5 U170 ( .A1(n167), .A2(X_24), .X(n166) );
  SAEDRVT14_NR2_1 U171 ( .A1(n166), .A2(n193), .X(n112) );
  SAEDRVT14_AOI21_0P75 U172 ( .A1(n166), .A2(n193), .B(n112), .X(I603) );
  SAEDRVT14_ND2_CDC_0P5 U173 ( .A1(n112), .A2(X_26), .X(n113) );
  SAEDRVT14_OA21_1 U174 ( .A1(n112), .A2(X_26), .B(n113), .X(I602) );
  SAEDRVT14_NR2_1 U175 ( .A1(n113), .A2(n205), .X(n176) );
  SAEDRVT14_AOI21_0P75 U176 ( .A1(n113), .A2(n205), .B(n176), .X(I601) );
  SAEDRVT14_ND2_CDC_0P5 U177 ( .A1(n176), .A2(X_28), .X(n175) );
  SAEDRVT14_NR2_1 U178 ( .A1(n175), .A2(n207), .X(n173) );
  SAEDRVT14_AOI21_0P75 U179 ( .A1(n175), .A2(n207), .B(n173), .X(I701) );
  SAEDRVT14_ND2_CDC_0P5 U180 ( .A1(n173), .A2(X_30), .X(n172) );
  SAEDRVT14_NR2_1 U181 ( .A1(n172), .A2(n212), .X(n174) );
  SAEDRVT14_AOI21_0P75 U182 ( .A1(n172), .A2(n212), .B(n174), .X(n184) );
  SAEDRVT14_AO32_U_0P5 U183 ( .A1(X_8), .A2(n194), .A3(C_8), .B1(X_7), .B2(C_7), .X(n114) );
  SAEDRVT14_OAI22_0P5 U184 ( .A1(X_6), .A2(n114), .B1(n195), .B2(C_6), .X(n115) );
  SAEDRVT14_AOI21_0P75 U185 ( .A1(n115), .A2(n196), .B(X_4), .X(n116) );
  SAEDRVT14_OAI21_0P5 U186 ( .A1(C_5), .A2(n196), .B(n116), .X(n117) );
  SAEDRVT14_AO21B_0P5 U187 ( .A1(C_4), .A2(X_4), .B(n117), .X(n118) );
  SAEDRVT14_OAI22_0P5 U188 ( .A1(X_3), .A2(n118), .B1(n199), .B2(C_3), .X(n120) );
  SAEDRVT14_OAI21_0P5 U189 ( .A1(C_2), .A2(n198), .B(n197), .X(n119) );
  SAEDRVT14_AOI21_0P75 U190 ( .A1(n198), .A2(n120), .B(n119), .X(n157) );
  SAEDRVT14_ND2B_U_0P5 U191 ( .A(X_4), .B(n199), .X(n122) );
  SAEDRVT14_OR4_1 U192 ( .A1(X_5), .A2(X_6), .A3(X_7), .A4(X_8), .X(n121) );
  SAEDRVT14_OR4_1 U193 ( .A1(X_1), .A2(X_2), .A3(n122), .A4(n121), .X(n151) );
  SAEDRVT14_AO32_U_0P5 U194 ( .A1(X_12), .A2(n200), .A3(C_12), .B1(X_11), .B2(
        C_11), .X(n123) );
  SAEDRVT14_MUX2_U_0P5 U195 ( .D0(n123), .D1(C_10), .S(X_10), .X(n124) );
  SAEDRVT14_OAI22_0P5 U196 ( .A1(X_9), .A2(n124), .B1(n201), .B2(C_9), .X(n126) );
  SAEDRVT14_AOI21_0P75 U197 ( .A1(C_1), .A2(X_1), .B(C_0), .X(n125) );
  SAEDRVT14_OAI21_0P5 U198 ( .A1(n151), .A2(n126), .B(n125), .X(n156) );
  SAEDRVT14_AO32_U_0P5 U199 ( .A1(X_16), .A2(n202), .A3(C_16), .B1(X_15), .B2(
        C_15), .X(n127) );
  SAEDRVT14_OAI22_0P5 U200 ( .A1(X_14), .A2(n127), .B1(n203), .B2(C_14), .X(
        n128) );
  SAEDRVT14_AOI21_0P75 U201 ( .A1(n128), .A2(n204), .B(X_10), .X(n129) );
  SAEDRVT14_OAI21_0P5 U202 ( .A1(C_13), .A2(n204), .B(n129), .X(n154) );
  SAEDRVT14_AO32_U_0P5 U203 ( .A1(X_28), .A2(n205), .A3(C_28), .B1(X_27), .B2(
        C_27), .X(n130) );
  SAEDRVT14_OAI22_0P5 U204 ( .A1(X_26), .A2(n130), .B1(n206), .B2(C_26), .X(
        n135) );
  SAEDRVT14_AO32_U_0P5 U205 ( .A1(X_32), .A2(n212), .A3(C_32), .B1(X_31), .B2(
        C_31), .X(n131) );
  SAEDRVT14_MUX2_U_0P5 U206 ( .D0(n131), .D1(C_30), .S(X_30), .X(n132) );
  SAEDRVT14_OAI22_0P5 U207 ( .A1(scan_out), .A2(n132), .B1(n207), .B2(C_29), 
        .X(n134) );
  SAEDRVT14_OR4_1 U208 ( .A1(X_25), .A2(X_26), .A3(X_27), .A4(X_28), .X(n133)
         );
  SAEDRVT14_OAI22_0P5 U209 ( .A1(X_25), .A2(n135), .B1(n134), .B2(n133), .X(
        n136) );
  SAEDRVT14_AOI21_0P75 U210 ( .A1(X_25), .A2(C_25), .B(n136), .X(n138) );
  SAEDRVT14_ND2_CDC_0P5 U211 ( .A1(X_24), .A2(C_24), .X(n137) );
  SAEDRVT14_OAI21_0P5 U212 ( .A1(n138), .A2(X_24), .B(n137), .X(n139) );
  SAEDRVT14_OAI22_0P5 U213 ( .A1(X_23), .A2(n139), .B1(n208), .B2(C_23), .X(
        n141) );
  SAEDRVT14_ND2_CDC_0P5 U214 ( .A1(X_22), .A2(C_22), .X(n140) );
  SAEDRVT14_OAI21_0P5 U215 ( .A1(n141), .A2(X_22), .B(n140), .X(n142) );
  SAEDRVT14_OAI22_0P5 U216 ( .A1(X_21), .A2(n142), .B1(n209), .B2(C_21), .X(
        n144) );
  SAEDRVT14_ND2_CDC_0P5 U217 ( .A1(X_20), .A2(C_20), .X(n143) );
  SAEDRVT14_OAI21_0P5 U218 ( .A1(n144), .A2(X_20), .B(n143), .X(n145) );
  SAEDRVT14_OAI22_0P5 U219 ( .A1(X_19), .A2(n145), .B1(n210), .B2(C_19), .X(
        n146) );
  SAEDRVT14_OAI21_0P5 U220 ( .A1(n146), .A2(X_18), .B(n211), .X(n147) );
  SAEDRVT14_AOI21_0P75 U221 ( .A1(X_18), .A2(C_18), .B(n147), .X(n150) );
  SAEDRVT14_NR2_1 U222 ( .A1(C_17), .A2(n211), .X(n149) );
  SAEDRVT14_OR4_1 U223 ( .A1(X_10), .A2(X_13), .A3(X_14), .A4(X_15), .X(n148)
         );
  SAEDRVT14_OR4_1 U224 ( .A1(X_16), .A2(n150), .A3(n149), .A4(n148), .X(n153)
         );
  SAEDRVT14_OR4_1 U225 ( .A1(X_9), .A2(X_11), .A3(X_12), .A4(n151), .X(n152)
         );
  SAEDRVT14_AOI21_0P75 U226 ( .A1(n154), .A2(n153), .B(n152), .X(n155) );
  SAEDRVT14_OA31_1 U227 ( .A1(n157), .A2(n156), .A3(n155), .B(P_0), .X(Z) );
  SAEDRVT14_OA21_1 U228 ( .A1(n159), .A2(X_4), .B(n158), .X(n192) );
  SAEDRVT14_OA21_1 U229 ( .A1(n161), .A2(X_10), .B(n160), .X(I210) );
  SAEDRVT14_OA21_1 U230 ( .A1(n163), .A2(X_20), .B(n162), .X(n188) );
  SAEDRVT14_OA21_1 U231 ( .A1(n165), .A2(X_22), .B(n164), .X(I504) );
  SAEDRVT14_OA21_1 U232 ( .A1(n167), .A2(X_24), .B(n166), .X(n187) );
  SAEDRVT14_OA21_1 U233 ( .A1(n169), .A2(X_2), .B(n168), .X(I14) );
  SAEDRVT14_OA21_1 U234 ( .A1(n171), .A2(X_18), .B(n170), .X(I406) );
  SAEDRVT14_OA21_1 U235 ( .A1(n173), .A2(X_30), .B(n172), .X(I700) );
  SAEDRVT14_EO2_V1_0P75 U236 ( .A1(X_32), .A2(n174), .X(n183) );
  SAEDRVT14_OA21_1 U237 ( .A1(n176), .A2(X_28), .B(n175), .X(n186) );
  SAEDRVT14_OA21_1 U238 ( .A1(n178), .A2(X_16), .B(n177), .X(n189) );
  SAEDRVT14_OA21_1 U239 ( .A1(n180), .A2(X_12), .B(n179), .X(n190) );
  SAEDRVT14_OA21_1 U240 ( .A1(n182), .A2(X_8), .B(n181), .X(n191) );
  SAEDRVT14_INV_0P5 U131 ( .A(scan_enable), .X(n228) );
  SAEDRVT14_INV_0P5 U241 ( .A(n228), .X(n229) );
  SAEDRVT14_INV_0P5 U242 ( .A(n228), .X(n230) );
  SAEDRVT14_INV_0P5 U243 ( .A(n228), .X(n231) );
endmodule

