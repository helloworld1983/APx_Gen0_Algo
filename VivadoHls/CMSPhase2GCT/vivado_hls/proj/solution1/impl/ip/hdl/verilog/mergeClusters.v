// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module mergeClusters (
        ap_ready,
        ieta1,
        iphi1,
        icet1,
        ieta2,
        iphi2,
        icet2,
        ap_return_0,
        ap_return_1,
        ap_return_2,
        ap_return_3,
        ap_return_4,
        ap_return_5
);


output   ap_ready;
input  [2:0] ieta1;
input  [3:0] iphi1;
input  [15:0] icet1;
input  [2:0] ieta2;
input  [15:0] iphi2;
input  [15:0] icet2;
output  [15:0] ap_return_0;
output  [15:0] ap_return_1;
output  [15:0] ap_return_2;
output  [15:0] ap_return_3;
output  [15:0] ap_return_4;
output  [15:0] ap_return_5;

wire  signed [4:0] iphi1_cast1_fu_68_p1;
wire   [0:0] tmp_s_fu_90_p2;
wire   [15:0] tmp_2_fu_96_p2;
wire   [0:0] tmp_fu_84_p2;
wire   [15:0] tmp_14_s_fu_102_p3;
wire   [15:0] p_tmp_s_fu_110_p3;
wire   [15:0] ieta1_cast1_fu_80_p1;
wire   [15:0] iphi1_cast_fu_76_p1;
wire   [15:0] cet1_write_assign_fu_118_p3;
wire   [15:0] ieta2_cast2_fu_72_p1;
wire   [15:0] cet2_write_assign_fu_126_p3;

assign ap_ready = 1'b1;

assign ap_return_0 = ieta1_cast1_fu_80_p1;

assign ap_return_1 = iphi1_cast_fu_76_p1;

assign ap_return_2 = cet1_write_assign_fu_118_p3;

assign ap_return_3 = ieta2_cast2_fu_72_p1;

assign ap_return_4 = iphi2;

assign ap_return_5 = cet2_write_assign_fu_126_p3;

assign cet1_write_assign_fu_118_p3 = ((tmp_fu_84_p2[0:0] === 1'b1) ? tmp_14_s_fu_102_p3 : icet1);

assign cet2_write_assign_fu_126_p3 = ((tmp_fu_84_p2[0:0] === 1'b1) ? p_tmp_s_fu_110_p3 : icet2);

assign ieta1_cast1_fu_80_p1 = ieta1;

assign ieta2_cast2_fu_72_p1 = ieta2;

assign iphi1_cast1_fu_68_p1 = $signed(iphi1);

assign iphi1_cast_fu_76_p1 = $unsigned(iphi1_cast1_fu_68_p1);

assign p_tmp_s_fu_110_p3 = ((tmp_s_fu_90_p2[0:0] === 1'b1) ? 16'd0 : tmp_2_fu_96_p2);

assign tmp_14_s_fu_102_p3 = ((tmp_s_fu_90_p2[0:0] === 1'b1) ? tmp_2_fu_96_p2 : 16'd0);

assign tmp_2_fu_96_p2 = (icet1 + icet2);

assign tmp_fu_84_p2 = ((ieta1 == ieta2) ? 1'b1 : 1'b0);

assign tmp_s_fu_90_p2 = ((icet1 > icet2) ? 1'b1 : 1'b0);

endmodule //mergeClusters
