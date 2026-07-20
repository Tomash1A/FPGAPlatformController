// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Tue Jun  9 11:57:07 2026
// Host        : CS-RO-PC29 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ projectHW_adc_capture_0_0_sim_netlist.v
// Design      : projectHW_adc_capture_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adc_capture
   (data_out,
    clk_out,
    or_out,
    ADC_DATA_p,
    ADC_DATA_n,
    ADC_DCLK_clk_p,
    ADC_DCLK_clk_n,
    ADC_OR_clk_p,
    ADC_OR_clk_n);
  output [27:0]data_out;
  output clk_out;
  output or_out;
  input [13:0]ADC_DATA_p;
  input [13:0]ADC_DATA_n;
  input ADC_DCLK_clk_p;
  input ADC_DCLK_clk_n;
  input ADC_OR_clk_p;
  input ADC_OR_clk_n;

  wire [13:0]ADC_DATA_n;
  wire [13:0]ADC_DATA_p;
  wire ADC_DCLK_clk_n;
  wire ADC_DCLK_clk_p;
  wire ADC_OR_clk_n;
  wire ADC_OR_clk_p;
  wire clk_ibuf;
  wire clk_out;
  wire [27:0]data_out;
  wire \gen_data[0].data_ibuf ;
  wire \gen_data[10].data_ibuf ;
  wire \gen_data[11].data_ibuf ;
  wire \gen_data[12].data_ibuf ;
  wire \gen_data[13].data_ibuf ;
  wire \gen_data[1].data_ibuf ;
  wire \gen_data[2].data_ibuf ;
  wire \gen_data[3].data_ibuf ;
  wire \gen_data[4].data_ibuf ;
  wire \gen_data[5].data_ibuf ;
  wire \gen_data[6].data_ibuf ;
  wire \gen_data[7].data_ibuf ;
  wire \gen_data[8].data_ibuf ;
  wire \gen_data[9].data_ibuf ;
  wire or_ibuf;
  wire or_out;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    \gen_data[0].u_data_ibuf 
       (.I(ADC_DATA_p[0]),
        .IB(ADC_DATA_n[0]),
        .O(\gen_data[0].data_ibuf ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* __SRVAL = "TRUE" *) 
  IDDR #(
    .DDR_CLK_EDGE("SAME_EDGE_PIPELINED"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    \gen_data[0].u_data_iddr 
       (.C(clk_out),
        .CE(1'b1),
        .D(\gen_data[0].data_ibuf ),
        .Q1(data_out[0]),
        .Q2(data_out[1]),
        .R(1'b0),
        .S(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    \gen_data[10].u_data_ibuf 
       (.I(ADC_DATA_p[10]),
        .IB(ADC_DATA_n[10]),
        .O(\gen_data[10].data_ibuf ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* __SRVAL = "TRUE" *) 
  IDDR #(
    .DDR_CLK_EDGE("SAME_EDGE_PIPELINED"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    \gen_data[10].u_data_iddr 
       (.C(clk_out),
        .CE(1'b1),
        .D(\gen_data[10].data_ibuf ),
        .Q1(data_out[20]),
        .Q2(data_out[21]),
        .R(1'b0),
        .S(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    \gen_data[11].u_data_ibuf 
       (.I(ADC_DATA_p[11]),
        .IB(ADC_DATA_n[11]),
        .O(\gen_data[11].data_ibuf ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* __SRVAL = "TRUE" *) 
  IDDR #(
    .DDR_CLK_EDGE("SAME_EDGE_PIPELINED"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    \gen_data[11].u_data_iddr 
       (.C(clk_out),
        .CE(1'b1),
        .D(\gen_data[11].data_ibuf ),
        .Q1(data_out[22]),
        .Q2(data_out[23]),
        .R(1'b0),
        .S(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    \gen_data[12].u_data_ibuf 
       (.I(ADC_DATA_p[12]),
        .IB(ADC_DATA_n[12]),
        .O(\gen_data[12].data_ibuf ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* __SRVAL = "TRUE" *) 
  IDDR #(
    .DDR_CLK_EDGE("SAME_EDGE_PIPELINED"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    \gen_data[12].u_data_iddr 
       (.C(clk_out),
        .CE(1'b1),
        .D(\gen_data[12].data_ibuf ),
        .Q1(data_out[24]),
        .Q2(data_out[25]),
        .R(1'b0),
        .S(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    \gen_data[13].u_data_ibuf 
       (.I(ADC_DATA_p[13]),
        .IB(ADC_DATA_n[13]),
        .O(\gen_data[13].data_ibuf ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* __SRVAL = "TRUE" *) 
  IDDR #(
    .DDR_CLK_EDGE("SAME_EDGE_PIPELINED"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    \gen_data[13].u_data_iddr 
       (.C(clk_out),
        .CE(1'b1),
        .D(\gen_data[13].data_ibuf ),
        .Q1(data_out[26]),
        .Q2(data_out[27]),
        .R(1'b0),
        .S(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    \gen_data[1].u_data_ibuf 
       (.I(ADC_DATA_p[1]),
        .IB(ADC_DATA_n[1]),
        .O(\gen_data[1].data_ibuf ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* __SRVAL = "TRUE" *) 
  IDDR #(
    .DDR_CLK_EDGE("SAME_EDGE_PIPELINED"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    \gen_data[1].u_data_iddr 
       (.C(clk_out),
        .CE(1'b1),
        .D(\gen_data[1].data_ibuf ),
        .Q1(data_out[2]),
        .Q2(data_out[3]),
        .R(1'b0),
        .S(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    \gen_data[2].u_data_ibuf 
       (.I(ADC_DATA_p[2]),
        .IB(ADC_DATA_n[2]),
        .O(\gen_data[2].data_ibuf ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* __SRVAL = "TRUE" *) 
  IDDR #(
    .DDR_CLK_EDGE("SAME_EDGE_PIPELINED"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    \gen_data[2].u_data_iddr 
       (.C(clk_out),
        .CE(1'b1),
        .D(\gen_data[2].data_ibuf ),
        .Q1(data_out[4]),
        .Q2(data_out[5]),
        .R(1'b0),
        .S(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    \gen_data[3].u_data_ibuf 
       (.I(ADC_DATA_p[3]),
        .IB(ADC_DATA_n[3]),
        .O(\gen_data[3].data_ibuf ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* __SRVAL = "TRUE" *) 
  IDDR #(
    .DDR_CLK_EDGE("SAME_EDGE_PIPELINED"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    \gen_data[3].u_data_iddr 
       (.C(clk_out),
        .CE(1'b1),
        .D(\gen_data[3].data_ibuf ),
        .Q1(data_out[6]),
        .Q2(data_out[7]),
        .R(1'b0),
        .S(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    \gen_data[4].u_data_ibuf 
       (.I(ADC_DATA_p[4]),
        .IB(ADC_DATA_n[4]),
        .O(\gen_data[4].data_ibuf ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* __SRVAL = "TRUE" *) 
  IDDR #(
    .DDR_CLK_EDGE("SAME_EDGE_PIPELINED"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    \gen_data[4].u_data_iddr 
       (.C(clk_out),
        .CE(1'b1),
        .D(\gen_data[4].data_ibuf ),
        .Q1(data_out[8]),
        .Q2(data_out[9]),
        .R(1'b0),
        .S(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    \gen_data[5].u_data_ibuf 
       (.I(ADC_DATA_p[5]),
        .IB(ADC_DATA_n[5]),
        .O(\gen_data[5].data_ibuf ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* __SRVAL = "TRUE" *) 
  IDDR #(
    .DDR_CLK_EDGE("SAME_EDGE_PIPELINED"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    \gen_data[5].u_data_iddr 
       (.C(clk_out),
        .CE(1'b1),
        .D(\gen_data[5].data_ibuf ),
        .Q1(data_out[10]),
        .Q2(data_out[11]),
        .R(1'b0),
        .S(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    \gen_data[6].u_data_ibuf 
       (.I(ADC_DATA_p[6]),
        .IB(ADC_DATA_n[6]),
        .O(\gen_data[6].data_ibuf ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* __SRVAL = "TRUE" *) 
  IDDR #(
    .DDR_CLK_EDGE("SAME_EDGE_PIPELINED"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    \gen_data[6].u_data_iddr 
       (.C(clk_out),
        .CE(1'b1),
        .D(\gen_data[6].data_ibuf ),
        .Q1(data_out[12]),
        .Q2(data_out[13]),
        .R(1'b0),
        .S(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    \gen_data[7].u_data_ibuf 
       (.I(ADC_DATA_p[7]),
        .IB(ADC_DATA_n[7]),
        .O(\gen_data[7].data_ibuf ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* __SRVAL = "TRUE" *) 
  IDDR #(
    .DDR_CLK_EDGE("SAME_EDGE_PIPELINED"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    \gen_data[7].u_data_iddr 
       (.C(clk_out),
        .CE(1'b1),
        .D(\gen_data[7].data_ibuf ),
        .Q1(data_out[14]),
        .Q2(data_out[15]),
        .R(1'b0),
        .S(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    \gen_data[8].u_data_ibuf 
       (.I(ADC_DATA_p[8]),
        .IB(ADC_DATA_n[8]),
        .O(\gen_data[8].data_ibuf ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* __SRVAL = "TRUE" *) 
  IDDR #(
    .DDR_CLK_EDGE("SAME_EDGE_PIPELINED"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    \gen_data[8].u_data_iddr 
       (.C(clk_out),
        .CE(1'b1),
        .D(\gen_data[8].data_ibuf ),
        .Q1(data_out[16]),
        .Q2(data_out[17]),
        .R(1'b0),
        .S(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    \gen_data[9].u_data_ibuf 
       (.I(ADC_DATA_p[9]),
        .IB(ADC_DATA_n[9]),
        .O(\gen_data[9].data_ibuf ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* __SRVAL = "TRUE" *) 
  IDDR #(
    .DDR_CLK_EDGE("SAME_EDGE_PIPELINED"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    \gen_data[9].u_data_iddr 
       (.C(clk_out),
        .CE(1'b1),
        .D(\gen_data[9].data_ibuf ),
        .Q1(data_out[18]),
        .Q2(data_out[19]),
        .R(1'b0),
        .S(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG u_clk_bufg
       (.I(clk_ibuf),
        .O(clk_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    u_clk_ibuf
       (.I(ADC_DCLK_clk_p),
        .IB(ADC_DCLK_clk_n),
        .O(clk_ibuf));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    u_or_ibuf
       (.I(ADC_OR_clk_p),
        .IB(ADC_OR_clk_n),
        .O(or_ibuf));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    u_or_reg
       (.C(clk_out),
        .CE(1'b1),
        .D(or_ibuf),
        .Q(or_out),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "projectHW_adc_capture_0_0,adc_capture,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "adc_capture,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (ADC_DCLK_clk_p,
    ADC_DCLK_clk_n,
    ADC_OR_clk_p,
    ADC_OR_clk_n,
    ADC_DATA_p,
    ADC_DATA_n,
    clk_out,
    data_out,
    or_out);
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 ADC_DCLK CLK_P" *) (* X_INTERFACE_PARAMETER = "IOSTANDARD LVDS_25, DIFF_TERM TRUE" *) input ADC_DCLK_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 ADC_DCLK CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ADC_DCLK, IOSTANDARD LVDS_25, DIFF_TERM TRUE, CAN_DEBUG false, FREQ_HZ 100000000" *) input ADC_DCLK_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ADC_OR_clk_p CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ADC_OR_clk_p, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input ADC_OR_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ADC_OR_clk_n CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ADC_OR_clk_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input ADC_OR_clk_n;
  input [13:0]ADC_DATA_p;
  input [13:0]ADC_DATA_n;
  output clk_out;
  output [27:0]data_out;
  output or_out;

  (* DIFF_TERM *) (* IBUF_LOW_PWR = 0 *) wire [13:0]ADC_DATA_n;
  (* DIFF_TERM *) (* IBUF_LOW_PWR = 0 *) wire [13:0]ADC_DATA_p;
  (* DIFF_TERM *) (* IBUF_LOW_PWR = 0 *) wire ADC_DCLK_clk_n;
  (* DIFF_TERM *) (* IBUF_LOW_PWR = 0 *) wire ADC_DCLK_clk_p;
  (* DIFF_TERM *) (* IBUF_LOW_PWR = 0 *) wire ADC_OR_clk_n;
  (* DIFF_TERM *) (* IBUF_LOW_PWR = 0 *) wire ADC_OR_clk_p;
  wire clk_out;
  wire [27:0]data_out;
  wire or_out;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adc_capture inst
       (.ADC_DATA_n(ADC_DATA_n),
        .ADC_DATA_p(ADC_DATA_p),
        .ADC_DCLK_clk_n(ADC_DCLK_clk_n),
        .ADC_DCLK_clk_p(ADC_DCLK_clk_p),
        .ADC_OR_clk_n(ADC_OR_clk_n),
        .ADC_OR_clk_p(ADC_OR_clk_p),
        .clk_out(clk_out),
        .data_out(data_out),
        .or_out(or_out));
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
