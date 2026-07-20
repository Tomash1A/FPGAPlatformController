// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Tue Jun  9 11:57:07 2026
// Host        : CS-RO-PC29 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ projectHW_adc_capture_0_0_stub.v
// Design      : projectHW_adc_capture_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "adc_capture,Vivado 2021.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(ADC_DCLK_clk_p, ADC_DCLK_clk_n, ADC_OR_clk_p, 
  ADC_OR_clk_n, ADC_DATA_p, ADC_DATA_n, clk_out, data_out, or_out)
/* synthesis syn_black_box black_box_pad_pin="ADC_DCLK_clk_p,ADC_DCLK_clk_n,ADC_OR_clk_p,ADC_OR_clk_n,ADC_DATA_p[13:0],ADC_DATA_n[13:0],clk_out,data_out[27:0],or_out" */;
  input ADC_DCLK_clk_p;
  input ADC_DCLK_clk_n;
  input ADC_OR_clk_p;
  input ADC_OR_clk_n;
  input [13:0]ADC_DATA_p;
  input [13:0]ADC_DATA_n;
  output clk_out;
  output [27:0]data_out;
  output or_out;
endmodule
