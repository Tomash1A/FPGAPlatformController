// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Thu Jun 25 10:39:38 2026
// Host        : CS-RO-PC29 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ projectHW_FPGA_CLK_BUF_1_stub.v
// Design      : projectHW_FPGA_CLK_BUF_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "util_ds_buf,Vivado 2021.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(IBUF_DS_P, IBUF_DS_N, IBUF_OUT)
/* synthesis syn_black_box black_box_pad_pin="IBUF_DS_P[5:0],IBUF_DS_N[5:0],IBUF_OUT[5:0]" */;
  input [5:0]IBUF_DS_P;
  input [5:0]IBUF_DS_N;
  output [5:0]IBUF_OUT;
endmodule
