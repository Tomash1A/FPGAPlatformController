//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
//Date        : Sun Jul 19 16:18:20 2026
//Host        : CS-RO-PC29 running 64-bit major release  (build 9200)
//Command     : generate_target projectHW_wrapper.bd
//Design      : projectHW_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module projectHW_wrapper
   (ADC_DATA_B13_clk_n,
    ADC_DATA_B13_clk_p,
    ADC_DATA_B34_clk_n,
    ADC_DATA_B34_clk_p,
    ADC_DATA_B35_clk_n,
    ADC_DATA_B35_clk_p,
    ADC_DCLK_clk_n,
    ADC_DCLK_clk_p,
    ADC_OR_clk_n,
    ADC_OR_clk_p,
    DAC1_DATACLK_clk_n,
    DAC1_DATACLK_clk_p,
    DAC1_DATA_n,
    DAC1_DATA_p,
    DAC2_DATACLK_clk_n,
    DAC2_DATACLK_clk_p,
    DAC2_DATA_n,
    DAC2_DATA_p,
    DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    FPGA_CLK_clk_n,
    FPGA_CLK_clk_p);
  input [5:0]ADC_DATA_B13_clk_n;
  input [5:0]ADC_DATA_B13_clk_p;
  input [3:0]ADC_DATA_B34_clk_n;
  input [3:0]ADC_DATA_B34_clk_p;
  input [3:0]ADC_DATA_B35_clk_n;
  input [3:0]ADC_DATA_B35_clk_p;
  input [0:0]ADC_DCLK_clk_n;
  input [0:0]ADC_DCLK_clk_p;
  input ADC_OR_clk_n;
  input ADC_OR_clk_p;
  output DAC1_DATACLK_clk_n;
  output DAC1_DATACLK_clk_p;
  output [15:0]DAC1_DATA_n;
  output [15:0]DAC1_DATA_p;
  output DAC2_DATACLK_clk_n;
  output DAC2_DATACLK_clk_p;
  output [15:0]DAC2_DATA_n;
  output [15:0]DAC2_DATA_p;
  inout [14:0]DDR_addr;
  inout [2:0]DDR_ba;
  inout DDR_cas_n;
  inout DDR_ck_n;
  inout DDR_ck_p;
  inout DDR_cke;
  inout DDR_cs_n;
  inout [3:0]DDR_dm;
  inout [31:0]DDR_dq;
  inout [3:0]DDR_dqs_n;
  inout [3:0]DDR_dqs_p;
  inout DDR_odt;
  inout DDR_ras_n;
  inout DDR_reset_n;
  inout DDR_we_n;
  inout FIXED_IO_ddr_vrn;
  inout FIXED_IO_ddr_vrp;
  inout [53:0]FIXED_IO_mio;
  inout FIXED_IO_ps_clk;
  inout FIXED_IO_ps_porb;
  inout FIXED_IO_ps_srstb;
  input [0:0]FPGA_CLK_clk_n;
  input [0:0]FPGA_CLK_clk_p;

  wire [5:0]ADC_DATA_B13_clk_n;
  wire [5:0]ADC_DATA_B13_clk_p;
  wire [3:0]ADC_DATA_B34_clk_n;
  wire [3:0]ADC_DATA_B34_clk_p;
  wire [3:0]ADC_DATA_B35_clk_n;
  wire [3:0]ADC_DATA_B35_clk_p;
  wire [0:0]ADC_DCLK_clk_n;
  wire [0:0]ADC_DCLK_clk_p;
  wire ADC_OR_clk_n;
  wire ADC_OR_clk_p;
  wire DAC1_DATACLK_clk_n;
  wire DAC1_DATACLK_clk_p;
  wire [15:0]DAC1_DATA_n;
  wire [15:0]DAC1_DATA_p;
  wire DAC2_DATACLK_clk_n;
  wire DAC2_DATACLK_clk_p;
  wire [15:0]DAC2_DATA_n;
  wire [15:0]DAC2_DATA_p;
  wire [14:0]DDR_addr;
  wire [2:0]DDR_ba;
  wire DDR_cas_n;
  wire DDR_ck_n;
  wire DDR_ck_p;
  wire DDR_cke;
  wire DDR_cs_n;
  wire [3:0]DDR_dm;
  wire [31:0]DDR_dq;
  wire [3:0]DDR_dqs_n;
  wire [3:0]DDR_dqs_p;
  wire DDR_odt;
  wire DDR_ras_n;
  wire DDR_reset_n;
  wire DDR_we_n;
  wire FIXED_IO_ddr_vrn;
  wire FIXED_IO_ddr_vrp;
  wire [53:0]FIXED_IO_mio;
  wire FIXED_IO_ps_clk;
  wire FIXED_IO_ps_porb;
  wire FIXED_IO_ps_srstb;
  wire [0:0]FPGA_CLK_clk_n;
  wire [0:0]FPGA_CLK_clk_p;

  projectHW projectHW_i
       (.ADC_DATA_B13_clk_n(ADC_DATA_B13_clk_n),
        .ADC_DATA_B13_clk_p(ADC_DATA_B13_clk_p),
        .ADC_DATA_B34_clk_n(ADC_DATA_B34_clk_n),
        .ADC_DATA_B34_clk_p(ADC_DATA_B34_clk_p),
        .ADC_DATA_B35_clk_n(ADC_DATA_B35_clk_n),
        .ADC_DATA_B35_clk_p(ADC_DATA_B35_clk_p),
        .ADC_DCLK_clk_n(ADC_DCLK_clk_n),
        .ADC_DCLK_clk_p(ADC_DCLK_clk_p),
        .ADC_OR_clk_n(ADC_OR_clk_n),
        .ADC_OR_clk_p(ADC_OR_clk_p),
        .DAC1_DATACLK_clk_n(DAC1_DATACLK_clk_n),
        .DAC1_DATACLK_clk_p(DAC1_DATACLK_clk_p),
        .DAC1_DATA_n(DAC1_DATA_n),
        .DAC1_DATA_p(DAC1_DATA_p),
        .DAC2_DATACLK_clk_n(DAC2_DATACLK_clk_n),
        .DAC2_DATACLK_clk_p(DAC2_DATACLK_clk_p),
        .DAC2_DATA_n(DAC2_DATA_n),
        .DAC2_DATA_p(DAC2_DATA_p),
        .DDR_addr(DDR_addr),
        .DDR_ba(DDR_ba),
        .DDR_cas_n(DDR_cas_n),
        .DDR_ck_n(DDR_ck_n),
        .DDR_ck_p(DDR_ck_p),
        .DDR_cke(DDR_cke),
        .DDR_cs_n(DDR_cs_n),
        .DDR_dm(DDR_dm),
        .DDR_dq(DDR_dq),
        .DDR_dqs_n(DDR_dqs_n),
        .DDR_dqs_p(DDR_dqs_p),
        .DDR_odt(DDR_odt),
        .DDR_ras_n(DDR_ras_n),
        .DDR_reset_n(DDR_reset_n),
        .DDR_we_n(DDR_we_n),
        .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
        .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
        .FIXED_IO_mio(FIXED_IO_mio),
        .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
        .FIXED_IO_ps_porb(FIXED_IO_ps_porb),
        .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),
        .FPGA_CLK_clk_n(FPGA_CLK_clk_n),
        .FPGA_CLK_clk_p(FPGA_CLK_clk_p));
endmodule
