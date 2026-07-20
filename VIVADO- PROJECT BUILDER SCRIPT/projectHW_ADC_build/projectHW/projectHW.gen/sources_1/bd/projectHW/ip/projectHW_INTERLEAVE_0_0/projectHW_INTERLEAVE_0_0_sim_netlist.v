// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Mon Jun 29 10:00:01 2026
// Host        : CS-RO-PC29 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/shtomer/WIS_work/WIP/build_Test/projectHW_ADC_build/projectHW/projectHW.gen/sources_1/bd/projectHW/ip/projectHW_INTERLEAVE_0_0/projectHW_INTERLEAVE_0_0_sim_netlist.v
// Design      : projectHW_INTERLEAVE_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "projectHW_INTERLEAVE_0_0,INTERLEAVE,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "INTERLEAVE,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module projectHW_INTERLEAVE_0_0
   (CLK,
    CH1,
    CH2,
    DATA_out);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input CLK;
  input [31:0]CH1;
  input [31:0]CH2;
  output [31:0]DATA_out;

  wire [31:0]CH1;
  wire [31:0]CH2;
  wire CLK;
  wire [31:0]DATA_out;

  projectHW_INTERLEAVE_0_0_INTERLEAVE inst
       (.CH1(CH1),
        .CH2(CH2),
        .CLK(CLK),
        .DATA_out(DATA_out));
endmodule

(* ORIG_REF_NAME = "INTERLEAVE" *) 
module projectHW_INTERLEAVE_0_0_INTERLEAVE
   (DATA_out,
    CH1,
    CH2,
    CLK);
  output [31:0]DATA_out;
  input [31:0]CH1;
  input [31:0]CH2;
  input CLK;

  wire [31:0]CH1;
  wire [31:0]CH2;
  wire CLK;
  wire [31:0]DATA_out;

  LUT3 #(
    .INIT(8'hAC)) 
    \DATA_out[0]_INST_0 
       (.I0(CH1[0]),
        .I1(CH2[0]),
        .I2(CLK),
        .O(DATA_out[0]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DATA_out[10]_INST_0 
       (.I0(CH1[10]),
        .I1(CH2[10]),
        .I2(CLK),
        .O(DATA_out[10]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DATA_out[11]_INST_0 
       (.I0(CH1[11]),
        .I1(CH2[11]),
        .I2(CLK),
        .O(DATA_out[11]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DATA_out[12]_INST_0 
       (.I0(CH1[12]),
        .I1(CH2[12]),
        .I2(CLK),
        .O(DATA_out[12]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DATA_out[13]_INST_0 
       (.I0(CH1[13]),
        .I1(CH2[13]),
        .I2(CLK),
        .O(DATA_out[13]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DATA_out[14]_INST_0 
       (.I0(CH1[14]),
        .I1(CH2[14]),
        .I2(CLK),
        .O(DATA_out[14]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DATA_out[15]_INST_0 
       (.I0(CH1[15]),
        .I1(CH2[15]),
        .I2(CLK),
        .O(DATA_out[15]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DATA_out[16]_INST_0 
       (.I0(CH1[16]),
        .I1(CH2[16]),
        .I2(CLK),
        .O(DATA_out[16]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DATA_out[17]_INST_0 
       (.I0(CH1[17]),
        .I1(CH2[17]),
        .I2(CLK),
        .O(DATA_out[17]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DATA_out[18]_INST_0 
       (.I0(CH1[18]),
        .I1(CH2[18]),
        .I2(CLK),
        .O(DATA_out[18]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DATA_out[19]_INST_0 
       (.I0(CH1[19]),
        .I1(CH2[19]),
        .I2(CLK),
        .O(DATA_out[19]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DATA_out[1]_INST_0 
       (.I0(CH1[1]),
        .I1(CH2[1]),
        .I2(CLK),
        .O(DATA_out[1]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DATA_out[20]_INST_0 
       (.I0(CH1[20]),
        .I1(CH2[20]),
        .I2(CLK),
        .O(DATA_out[20]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DATA_out[21]_INST_0 
       (.I0(CH1[21]),
        .I1(CH2[21]),
        .I2(CLK),
        .O(DATA_out[21]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DATA_out[22]_INST_0 
       (.I0(CH1[22]),
        .I1(CH2[22]),
        .I2(CLK),
        .O(DATA_out[22]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DATA_out[23]_INST_0 
       (.I0(CH1[23]),
        .I1(CH2[23]),
        .I2(CLK),
        .O(DATA_out[23]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DATA_out[24]_INST_0 
       (.I0(CH1[24]),
        .I1(CH2[24]),
        .I2(CLK),
        .O(DATA_out[24]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DATA_out[25]_INST_0 
       (.I0(CH1[25]),
        .I1(CH2[25]),
        .I2(CLK),
        .O(DATA_out[25]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DATA_out[26]_INST_0 
       (.I0(CH1[26]),
        .I1(CH2[26]),
        .I2(CLK),
        .O(DATA_out[26]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DATA_out[27]_INST_0 
       (.I0(CH1[27]),
        .I1(CH2[27]),
        .I2(CLK),
        .O(DATA_out[27]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DATA_out[28]_INST_0 
       (.I0(CH1[28]),
        .I1(CH2[28]),
        .I2(CLK),
        .O(DATA_out[28]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DATA_out[29]_INST_0 
       (.I0(CH1[29]),
        .I1(CH2[29]),
        .I2(CLK),
        .O(DATA_out[29]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DATA_out[2]_INST_0 
       (.I0(CH1[2]),
        .I1(CH2[2]),
        .I2(CLK),
        .O(DATA_out[2]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DATA_out[30]_INST_0 
       (.I0(CH1[30]),
        .I1(CH2[30]),
        .I2(CLK),
        .O(DATA_out[30]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DATA_out[31]_INST_0 
       (.I0(CH1[31]),
        .I1(CH2[31]),
        .I2(CLK),
        .O(DATA_out[31]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DATA_out[3]_INST_0 
       (.I0(CH1[3]),
        .I1(CH2[3]),
        .I2(CLK),
        .O(DATA_out[3]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DATA_out[4]_INST_0 
       (.I0(CH1[4]),
        .I1(CH2[4]),
        .I2(CLK),
        .O(DATA_out[4]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DATA_out[5]_INST_0 
       (.I0(CH1[5]),
        .I1(CH2[5]),
        .I2(CLK),
        .O(DATA_out[5]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DATA_out[6]_INST_0 
       (.I0(CH1[6]),
        .I1(CH2[6]),
        .I2(CLK),
        .O(DATA_out[6]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DATA_out[7]_INST_0 
       (.I0(CH1[7]),
        .I1(CH2[7]),
        .I2(CLK),
        .O(DATA_out[7]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DATA_out[8]_INST_0 
       (.I0(CH1[8]),
        .I1(CH2[8]),
        .I2(CLK),
        .O(DATA_out[8]));
  LUT3 #(
    .INIT(8'hAC)) 
    \DATA_out[9]_INST_0 
       (.I0(CH1[9]),
        .I1(CH2[9]),
        .I2(CLK),
        .O(DATA_out[9]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
