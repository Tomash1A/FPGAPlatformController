// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Thu Jun 25 10:10:28 2026
// Host        : CS-RO-PC29 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/shtomer/WIS_work/WIP/build_Test/projectHW_ADC_build/projectHW/projectHW.gen/sources_1/bd/projectHW/ip/projectHW_DAC2_BUF_OUT_0/projectHW_DAC2_BUF_OUT_0_stub.v
// Design      : projectHW_DAC2_BUF_OUT_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module projectHW_DAC2_BUF_OUT_0(data_out_from_device, data_out_to_pins_p, 
  data_out_to_pins_n, clk_to_pins_p, clk_to_pins_n, clk_in, clk_reset, io_reset)
/* synthesis syn_black_box black_box_pad_pin="data_out_from_device[31:0],data_out_to_pins_p[15:0],data_out_to_pins_n[15:0],clk_to_pins_p,clk_to_pins_n,clk_in,clk_reset,io_reset" */;
  input [31:0]data_out_from_device;
  output [15:0]data_out_to_pins_p;
  output [15:0]data_out_to_pins_n;
  output clk_to_pins_p;
  output clk_to_pins_n;
  input clk_in;
  input clk_reset;
  input io_reset;
endmodule
