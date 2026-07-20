// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Sun Jun 28 08:51:18 2026
// Host        : CS-RO-PC29 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ projectHW_selectio_wiz_ADCDATA_13to10_0_stub.v
// Design      : projectHW_selectio_wiz_ADCDATA_13to10_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(data_in_from_pins_p, data_in_from_pins_n, 
  data_in_to_device, clk_in, io_reset)
/* synthesis syn_black_box black_box_pad_pin="data_in_from_pins_p[3:0],data_in_from_pins_n[3:0],data_in_to_device[7:0],clk_in,io_reset" */;
  input [3:0]data_in_from_pins_p;
  input [3:0]data_in_from_pins_n;
  output [7:0]data_in_to_device;
  input clk_in;
  input io_reset;
endmodule
