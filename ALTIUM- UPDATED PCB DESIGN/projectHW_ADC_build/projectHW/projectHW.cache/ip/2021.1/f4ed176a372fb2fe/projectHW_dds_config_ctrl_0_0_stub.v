// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Sun Jun 28 15:41:40 2026
// Host        : CS-RO-PC29 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ projectHW_dds_config_ctrl_0_0_stub.v
// Design      : projectHW_dds_config_ctrl_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "dds_config_ctrl,Vivado 2021.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, data_word, strobe, tready, tdata, tvalid, tlast, 
  aresetn_o)
/* synthesis syn_black_box black_box_pad_pin="clk,data_word[31:0],strobe[2:0],tready,tdata[63:0],tvalid,tlast,aresetn_o" */;
  input clk;
  input [31:0]data_word;
  input [2:0]strobe;
  input tready;
  output [63:0]tdata;
  output tvalid;
  output tlast;
  output aresetn_o;
endmodule
