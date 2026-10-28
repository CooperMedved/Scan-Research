/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : U-2022.12-SP6
// Date      : Tue Oct  6 13:54:05 2026
/////////////////////////////////////////////////////////////


module s510 ( CK, cblank, cclr, cnt10, cnt13, cnt21, cnt261, cnt272, cnt283, 
        cnt284, cnt44, cnt45, cnt509, cnt511, cnt567, cnt591, csm, csync, john, 
        pc, pclr, pcnt12, pcnt17, pcnt241, pcnt27, pcnt6, vsync, scan_in, 
        scan_out, scan_enable );
  input CK, cnt10, cnt13, cnt21, cnt261, cnt272, cnt283, cnt284, cnt44, cnt45,
         cnt509, cnt511, cnt567, cnt591, john, pcnt12, pcnt17, pcnt241, pcnt27,
         pcnt6, scan_in, scan_enable;
  output cblank, cclr, csm, csync, pc, pclr, vsync, scan_out;
  wire   st_5, st_4, st_3, st_2, st_1, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146,
         n147, n148, n149, n150, n151, n152, n153, n154, n155, n156, n157,
         n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, n168,
         n169, n170, n171, n172, n173, n174, n175, n176, n177, n178, n179,
         n180, n181, n182, n183, n184, n185, n186, n187, n188, n189, n190,
         n191, n192, n193, n194, n195, n196, n197, n198, n199, n200, n201,
         n202, n203, n204, n205, n206, n207, n208, n209, n210, n211, n212,
         n213, n214, n215, n216, n217, n218, n219, n220, n221, n222, n223,
         n224, n225, n226, n227, n228, n229, n230, n231, n232, n233, n234,
         n235, n236, n237, n238, n239, n240, n241, n242, n243, n244, n246,
         n247, n248, n249, n250, n251, n252;

  SAEDRVT14_FSDP_V2LP_1 DFF_2_Q_reg ( .D(n246), .SI(st_4), .SE(scan_enable), 
        .CK(CK), .Q(st_3), .QN(n251) );
  SAEDRVT14_FSDP_V2LP_1 DFF_1_Q_reg ( .D(n244), .SI(n247), .SE(scan_enable), 
        .CK(CK), .Q(st_4), .QN(n249) );
  SAEDRVT14_FSDP_V2LP_1 DFF_0_Q_reg ( .D(n243), .SI(scan_in), .SE(scan_enable), 
        .CK(CK), .Q(st_5), .QN(n247) );
  SAEDRVT14_FSDP_V2LP_1 DFF_3_Q_reg ( .D(n242), .SI(n251), .SE(scan_enable), 
        .CK(CK), .Q(st_2), .QN(n248) );
  SAEDRVT14_FSDP_V2LP_1 DFF_4_Q_reg ( .D(n241), .SI(st_2), .SE(scan_enable), 
        .CK(CK), .Q(st_1), .QN(n250) );
  SAEDRVT14_FSDP_V2LP_1 DFF_5_Q_reg ( .D(n240), .SI(n250), .SE(scan_enable), 
        .CK(CK), .Q(scan_out), .QN(n252) );
  SAEDRVT14_INV_0P5 U132 ( .A(n251), .X(n130) );
  SAEDRVT14_INV_0P5 U133 ( .A(n130), .X(n131) );
  SAEDRVT14_INV_0P5 U134 ( .A(n130), .X(n132) );
  SAEDRVT14_OAI22_0P5 U135 ( .A1(st_3), .A2(st_2), .B1(n251), .B2(n250), .X(
        n148) );
  SAEDRVT14_NR2_1 U136 ( .A1(n249), .A2(n252), .X(n174) );
  SAEDRVT14_INV_0P5 U137 ( .A(n174), .X(n199) );
  SAEDRVT14_ND2_CDC_0P5 U138 ( .A1(st_3), .A2(st_1), .X(n215) );
  SAEDRVT14_INV_0P5 U139 ( .A(n215), .X(n176) );
  SAEDRVT14_ND2_CDC_0P5 U140 ( .A1(scan_out), .A2(n248), .X(n214) );
  SAEDRVT14_INV_0P5 U141 ( .A(cnt44), .X(n133) );
  SAEDRVT14_NR2_1 U142 ( .A1(st_3), .A2(n250), .X(n231) );
  SAEDRVT14_OAI21_0P5 U143 ( .A1(pcnt12), .A2(n133), .B(n231), .X(n136) );
  SAEDRVT14_INV_0P5 U144 ( .A(cnt567), .X(n134) );
  SAEDRVT14_OAI21_0P5 U145 ( .A1(pcnt27), .A2(n134), .B(n176), .X(n135) );
  SAEDRVT14_AOI21_0P75 U146 ( .A1(n136), .A2(n135), .B(st_2), .X(n141) );
  SAEDRVT14_ND2_CDC_0P5 U147 ( .A1(n247), .A2(n249), .X(n220) );
  SAEDRVT14_INV_0P5 U148 ( .A(n220), .X(n208) );
  SAEDRVT14_AN4_0P5 U149 ( .A1(n208), .A2(n251), .A3(n248), .A4(n250), .X(n205) );
  SAEDRVT14_ND2_CDC_0P5 U150 ( .A1(st_5), .A2(st_2), .X(n216) );
  SAEDRVT14_OAI22_0P5 U151 ( .A1(st_3), .A2(n216), .B1(n208), .B2(n250), .X(
        n140) );
  SAEDRVT14_ND2_CDC_0P5 U152 ( .A1(st_2), .A2(st_1), .X(n207) );
  SAEDRVT14_INV_0P5 U153 ( .A(n207), .X(n228) );
  SAEDRVT14_ND2_CDC_0P5 U154 ( .A1(n228), .A2(n132), .X(n172) );
  SAEDRVT14_INV_0P5 U155 ( .A(cnt511), .X(n137) );
  SAEDRVT14_NR2_1 U156 ( .A1(n132), .A2(n207), .X(n173) );
  SAEDRVT14_OAI21_0P5 U157 ( .A1(pcnt241), .A2(n137), .B(n173), .X(n138) );
  SAEDRVT14_OAI21_0P5 U158 ( .A1(cnt13), .A2(n172), .B(n138), .X(n139) );
  SAEDRVT14_OR4_1 U159 ( .A1(n141), .A2(n205), .A3(n140), .A4(n139), .X(n145)
         );
  SAEDRVT14_AOI21_0P75 U160 ( .A1(cnt284), .A2(pcnt17), .B(n172), .X(n143) );
  SAEDRVT14_ND2_CDC_0P5 U161 ( .A1(st_3), .A2(n249), .X(n142) );
  SAEDRVT14_NR2_1 U162 ( .A1(n248), .A2(n142), .X(n239) );
  SAEDRVT14_AO32_U_0P5 U163 ( .A1(scan_out), .A2(n143), .A3(n247), .B1(
        scan_out), .B2(n239), .X(n144) );
  SAEDRVT14_AOI21_0P75 U164 ( .A1(n252), .A2(n145), .B(n144), .X(n146) );
  SAEDRVT14_OA31_1 U165 ( .A1(n176), .A2(n247), .A3(n214), .B(n146), .X(n147)
         );
  SAEDRVT14_OAI21_0P5 U166 ( .A1(n148), .A2(n199), .B(n147), .X(n241) );
  SAEDRVT14_OAI21_0P5 U167 ( .A1(scan_out), .A2(cnt21), .B(st_4), .X(n169) );
  SAEDRVT14_NR2_1 U168 ( .A1(st_1), .A2(n248), .X(n206) );
  SAEDRVT14_ND2_CDC_0P5 U169 ( .A1(st_3), .A2(n206), .X(n223) );
  SAEDRVT14_OA221_U_0P5 U170 ( .A1(st_3), .A2(st_5), .B1(n251), .B2(st_4), .C(
        cnt10), .X(n151) );
  SAEDRVT14_INV_0P5 U171 ( .A(n223), .X(n149) );
  SAEDRVT14_AN3_0P5 U172 ( .A1(st_5), .A2(n149), .A3(cnt509), .X(n150) );
  SAEDRVT14_AOI21_0P75 U173 ( .A1(n228), .A2(n151), .B(n150), .X(n167) );
  SAEDRVT14_OA221_U_0P5 U174 ( .A1(st_1), .A2(cnt45), .B1(n250), .B2(john), 
        .C(st_2), .X(n163) );
  SAEDRVT14_OA221_U_0P5 U175 ( .A1(st_1), .A2(cnt591), .B1(n250), .B2(cnt567), 
        .C(st_3), .X(n156) );
  SAEDRVT14_AO32_U_0P5 U176 ( .A1(st_1), .A2(st_3), .A3(cnt283), .B1(n132), 
        .B2(cnt21), .X(n154) );
  SAEDRVT14_OAI21_0P5 U177 ( .A1(n131), .A2(n249), .B(n247), .X(n171) );
  SAEDRVT14_AO32_U_0P5 U178 ( .A1(cnt44), .A2(n131), .A3(n249), .B1(cnt44), 
        .B2(st_5), .X(n152) );
  SAEDRVT14_AO32_U_0P5 U179 ( .A1(cnt45), .A2(n250), .A3(n171), .B1(st_1), 
        .B2(n152), .X(n153) );
  SAEDRVT14_AO21_U_0P5 U180 ( .A1(st_4), .A2(n154), .B(n153), .X(n155) );
  SAEDRVT14_AOI21_0P75 U181 ( .A1(n208), .A2(n156), .B(n155), .X(n161) );
  SAEDRVT14_ND2_CDC_0P5 U182 ( .A1(cnt284), .A2(pcnt6), .X(n158) );
  SAEDRVT14_OAI21_0P5 U183 ( .A1(cnt272), .A2(n251), .B(n206), .X(n157) );
  SAEDRVT14_AOI21_0P75 U184 ( .A1(n158), .A2(n131), .B(n157), .X(n159) );
  SAEDRVT14_AOI21_0P75 U185 ( .A1(n173), .A2(cnt511), .B(n159), .X(n160) );
  SAEDRVT14_OAI22_0P5 U186 ( .A1(st_2), .A2(n161), .B1(n160), .B2(n220), .X(
        n162) );
  SAEDRVT14_AOI31_0P5 U187 ( .A1(st_4), .A2(n131), .A3(n163), .B(n162), .X(
        n166) );
  SAEDRVT14_ND2_CDC_0P5 U188 ( .A1(st_5), .A2(n206), .X(n202) );
  SAEDRVT14_AO21_U_0P5 U189 ( .A1(n248), .A2(st_1), .B(n206), .X(n212) );
  SAEDRVT14_OAI22_0P5 U190 ( .A1(cnt261), .A2(n202), .B1(n212), .B2(n220), .X(
        n164) );
  SAEDRVT14_ND2_CDC_0P5 U191 ( .A1(n132), .A2(n164), .X(n165) );
  SAEDRVT14_AO32_U_0P5 U192 ( .A1(n167), .A2(n252), .A3(n166), .B1(scan_out), 
        .B2(n165), .X(n168) );
  SAEDRVT14_OAI21_0P5 U193 ( .A1(n169), .A2(n223), .B(n168), .X(n240) );
  SAEDRVT14_NR2_1 U194 ( .A1(n250), .A2(n214), .X(n185) );
  SAEDRVT14_INV_0P5 U195 ( .A(n239), .X(n186) );
  SAEDRVT14_OAI22_0P5 U196 ( .A1(scan_out), .A2(n186), .B1(n251), .B2(n216), 
        .X(n170) );
  SAEDRVT14_AO21_U_0P5 U197 ( .A1(n185), .A2(n171), .B(n170), .X(cblank) );
  SAEDRVT14_OR2_MM_0P5 U198 ( .A1(n214), .A2(n220), .X(n222) );
  SAEDRVT14_OAI22_0P5 U199 ( .A1(n215), .A2(n222), .B1(n199), .B2(n172), .X(
        pclr) );
  SAEDRVT14_AOI21_0P75 U200 ( .A1(n174), .A2(n173), .B(n205), .X(n175) );
  SAEDRVT14_OAI21_0P5 U201 ( .A1(n176), .A2(n222), .B(n175), .X(pc) );
  SAEDRVT14_ND2_CDC_0P5 U202 ( .A1(n208), .A2(scan_out), .X(n182) );
  SAEDRVT14_OAI21_0P5 U203 ( .A1(st_1), .A2(n199), .B(n186), .X(n180) );
  SAEDRVT14_OAI21_0P5 U204 ( .A1(st_3), .A2(st_5), .B(st_1), .X(n200) );
  SAEDRVT14_OAI21_0P5 U205 ( .A1(n220), .A2(n251), .B(n200), .X(n177) );
  SAEDRVT14_AOI21_0P75 U206 ( .A1(n249), .A2(n212), .B(n177), .X(n178) );
  SAEDRVT14_OAI22_0P5 U207 ( .A1(scan_out), .A2(n178), .B1(n208), .B2(n214), 
        .X(n179) );
  SAEDRVT14_NR2_1 U208 ( .A1(n180), .A2(n179), .X(n181) );
  SAEDRVT14_OAI21_0P5 U209 ( .A1(n182), .A2(n207), .B(n181), .X(csync) );
  SAEDRVT14_ND2_CDC_0P5 U210 ( .A1(st_2), .A2(scan_out), .X(n198) );
  SAEDRVT14_ND2_CDC_0P5 U211 ( .A1(st_3), .A2(st_5), .X(n183) );
  SAEDRVT14_AOI21_0P75 U212 ( .A1(n207), .A2(n198), .B(n183), .X(csm) );
  SAEDRVT14_NR2_1 U213 ( .A1(n250), .A2(n252), .X(n211) );
  SAEDRVT14_INV_0P5 U214 ( .A(n211), .X(n184) );
  SAEDRVT14_ND2_CDC_0P5 U215 ( .A1(n251), .A2(n250), .X(n196) );
  SAEDRVT14_OAI22_0P5 U216 ( .A1(n247), .A2(n184), .B1(n199), .B2(n196), .X(
        n188) );
  SAEDRVT14_INV_0P5 U217 ( .A(n185), .X(n224) );
  SAEDRVT14_OAI22_0P5 U218 ( .A1(st_4), .A2(n224), .B1(st_1), .B2(n186), .X(
        n187) );
  SAEDRVT14_NR2_1 U219 ( .A1(n188), .A2(n187), .X(n191) );
  SAEDRVT14_OAI22_0P5 U220 ( .A1(st_5), .A2(scan_out), .B1(st_2), .B2(n208), 
        .X(n189) );
  SAEDRVT14_ND2_CDC_0P5 U221 ( .A1(st_3), .A2(n189), .X(n190) );
  SAEDRVT14_ND2_CDC_0P5 U222 ( .A1(n191), .A2(n190), .X(n246) );
  SAEDRVT14_NR2_1 U223 ( .A1(st_1), .A2(n132), .X(n192) );
  SAEDRVT14_AO221_0P5 U224 ( .A1(n252), .A2(n231), .B1(n252), .B2(n248), .C(
        n192), .X(n194) );
  SAEDRVT14_AOI21_0P75 U225 ( .A1(n132), .A2(n248), .B(n252), .X(n193) );
  SAEDRVT14_OAI21_0P5 U226 ( .A1(n194), .A2(n193), .B(st_5), .X(n195) );
  SAEDRVT14_OA31_1 U227 ( .A1(st_4), .A2(n196), .A3(n214), .B(n195), .X(n197)
         );
  SAEDRVT14_OAI21_0P5 U228 ( .A1(n215), .A2(n198), .B(n197), .X(n243) );
  SAEDRVT14_ND2_CDC_0P5 U229 ( .A1(scan_out), .A2(n247), .X(n229) );
  SAEDRVT14_NR2_1 U230 ( .A1(st_1), .A2(n229), .X(n204) );
  SAEDRVT14_ND2_CDC_0P5 U231 ( .A1(n199), .A2(n214), .X(n232) );
  SAEDRVT14_ND2_CDC_0P5 U232 ( .A1(n131), .A2(n252), .X(n201) );
  SAEDRVT14_OAI22_0P5 U233 ( .A1(n202), .A2(n201), .B1(n252), .B2(n200), .X(
        n203) );
  SAEDRVT14_OR4_1 U234 ( .A1(n205), .A2(n204), .A3(n232), .A4(n203), .X(cclr)
         );
  SAEDRVT14_ND2_CDC_0P5 U235 ( .A1(n206), .A2(n247), .X(n225) );
  SAEDRVT14_OAI21_0P5 U236 ( .A1(st_4), .A2(n207), .B(n225), .X(n210) );
  SAEDRVT14_ND2_CDC_0P5 U237 ( .A1(n248), .A2(n252), .X(n213) );
  SAEDRVT14_OAI22_0P5 U238 ( .A1(st_1), .A2(n213), .B1(st_2), .B2(n208), .X(
        n209) );
  SAEDRVT14_OR4_1 U239 ( .A1(st_3), .A2(n211), .A3(n210), .A4(n209), .X(vsync)
         );
  SAEDRVT14_ND2_CDC_0P5 U240 ( .A1(scan_out), .A2(n212), .X(n221) );
  SAEDRVT14_AO221_0P5 U241 ( .A1(st_3), .A2(n214), .B1(n131), .B2(n213), .C(
        st_1), .X(n217) );
  SAEDRVT14_OAI22_0P5 U242 ( .A1(st_5), .A2(n217), .B1(n216), .B2(n215), .X(
        n218) );
  SAEDRVT14_AOI21_0P75 U243 ( .A1(st_4), .A2(n252), .B(n218), .X(n219) );
  SAEDRVT14_OAI21_0P5 U244 ( .A1(n220), .A2(n221), .B(n219), .X(n244) );
  SAEDRVT14_OAI22_0P5 U245 ( .A1(st_1), .A2(n222), .B1(n247), .B2(n221), .X(
        n238) );
  SAEDRVT14_OAI21_0P5 U246 ( .A1(n249), .A2(n224), .B(n223), .X(n237) );
  SAEDRVT14_ND2_CDC_0P5 U247 ( .A1(cnt13), .A2(n247), .X(n227) );
  SAEDRVT14_OAI22_0P5 U248 ( .A1(cnt284), .A2(n225), .B1(n248), .B2(n249), .X(
        n226) );
  SAEDRVT14_AOI21_0P75 U249 ( .A1(n228), .A2(n227), .B(n226), .X(n235) );
  SAEDRVT14_INV_0P5 U250 ( .A(pcnt17), .X(n230) );
  SAEDRVT14_AOI21_0P75 U251 ( .A1(cnt284), .A2(n230), .B(n229), .X(n233) );
  SAEDRVT14_OAI21_0P5 U252 ( .A1(n233), .A2(n232), .B(n231), .X(n234) );
  SAEDRVT14_OAI21_0P5 U253 ( .A1(scan_out), .A2(n235), .B(n234), .X(n236) );
  SAEDRVT14_OR4_1 U254 ( .A1(n239), .A2(n238), .A3(n237), .A4(n236), .X(n242)
         );
endmodule

