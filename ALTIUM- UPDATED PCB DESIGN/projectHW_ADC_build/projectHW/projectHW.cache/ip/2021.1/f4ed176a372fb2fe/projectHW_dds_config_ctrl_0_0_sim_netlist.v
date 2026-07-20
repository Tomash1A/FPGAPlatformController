// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Sun Jun 28 15:41:40 2026
// Host        : CS-RO-PC29 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ projectHW_dds_config_ctrl_0_0_sim_netlist.v
// Design      : projectHW_dds_config_ctrl_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dds_config_ctrl
   (aresetn_o,
    strobe,
    clk);
  output aresetn_o;
  input [2:0]strobe;
  input clk;

  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_3_n_0 ;
  wire \FSM_sequential_state[2]_i_4_n_0 ;
  wire \FSM_sequential_state[2]_i_5_n_0 ;
  wire \FSM_sequential_state[2]_i_6_n_0 ;
  wire aresetn_o;
  wire clk;
  wire [2:0]state;
  wire [2:1]state__0;
  wire [2:0]strobe;
  wire [2:0]strobe_prev;

  LUT6 #(
    .INIT(64'hFFFF0022FF0F0000)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(\FSM_sequential_state[2]_i_3_n_0 ),
        .I1(strobe[2]),
        .I2(\FSM_sequential_state[2]_i_5_n_0 ),
        .I3(state[2]),
        .I4(state[0]),
        .I5(strobe[0]),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAABFBFBFAA808080)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state__0[1]),
        .I1(\FSM_sequential_state[2]_i_3_n_0 ),
        .I2(\FSM_sequential_state[2]_i_4_n_0 ),
        .I3(\FSM_sequential_state[2]_i_5_n_0 ),
        .I4(\FSM_sequential_state[2]_i_6_n_0 ),
        .I5(state[1]),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .O(state__0[1]));
  LUT6 #(
    .INIT(64'hAABFBFBFAA808080)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(state__0[2]),
        .I1(\FSM_sequential_state[2]_i_3_n_0 ),
        .I2(\FSM_sequential_state[2]_i_4_n_0 ),
        .I3(\FSM_sequential_state[2]_i_5_n_0 ),
        .I4(\FSM_sequential_state[2]_i_6_n_0 ),
        .I5(state[2]),
        .O(\FSM_sequential_state[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \FSM_sequential_state[2]_i_2 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .O(state__0[2]));
  LUT5 #(
    .INIT(32'hBF0000EF)) 
    \FSM_sequential_state[2]_i_3 
       (.I0(strobe_prev[2]),
        .I1(strobe_prev[1]),
        .I2(strobe_prev[0]),
        .I3(strobe[1]),
        .I4(state[1]),
        .O(\FSM_sequential_state[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \FSM_sequential_state[2]_i_4 
       (.I0(state[0]),
        .I1(strobe[0]),
        .I2(strobe[2]),
        .I3(state[2]),
        .O(\FSM_sequential_state[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000000FDFB000000)) 
    \FSM_sequential_state[2]_i_5 
       (.I0(strobe_prev[1]),
        .I1(strobe_prev[2]),
        .I2(strobe_prev[0]),
        .I3(state[1]),
        .I4(strobe[2]),
        .I5(strobe[1]),
        .O(\FSM_sequential_state[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \FSM_sequential_state[2]_i_6 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(strobe[0]),
        .O(\FSM_sequential_state[2]_i_6_n_0 ));
  (* FSM_ENCODED_STATES = "rx_w0:000,rx_w1:001,rx_w2:010,rx_w3:011,reset_dds:100,tx_chan0:101,tx_chan1:110," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "rx_w0:000,rx_w1:001,rx_w2:010,rx_w3:011,reset_dds:100,tx_chan0:101,tx_chan1:110," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state[1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "rx_w0:000,rx_w1:001,rx_w2:010,rx_w3:011,reset_dds:100,tx_chan0:101,tx_chan1:110," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[2]_i_1_n_0 ),
        .Q(state[2]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    aresetn_o_INST_0
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .O(aresetn_o));
  FDRE #(
    .INIT(1'b0)) 
    \strobe_prev_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(strobe[0]),
        .Q(strobe_prev[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \strobe_prev_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(strobe[1]),
        .Q(strobe_prev[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \strobe_prev_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(strobe[2]),
        .Q(strobe_prev[2]),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "projectHW_dds_config_ctrl_0_0,dds_config_ctrl,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "dds_config_ctrl,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    data_word,
    strobe,
    tready,
    tdata,
    tvalid,
    tlast,
    aresetn_o);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF interface_axis, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN projectHW_FPGA_CLK_BUF_0_IBUF_OUT, INSERT_VIP 0" *) input clk;
  input [31:0]data_word;
  input [2:0]strobe;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 interface_axis TREADY" *) input tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 interface_axis TDATA" *) output [63:0]tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 interface_axis TVALID" *) output tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 interface_axis TLAST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interface_axis, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN projectHW_FPGA_CLK_BUF_0_IBUF_OUT, LAYERED_METADATA undef, INSERT_VIP 0" *) output tlast;
  output aresetn_o;

  wire \<const0> ;
  wire aresetn_o;
  wire clk;
  wire [2:0]strobe;

  assign tdata[63] = \<const0> ;
  assign tdata[62] = \<const0> ;
  assign tdata[61] = \<const0> ;
  assign tdata[60] = \<const0> ;
  assign tdata[59] = \<const0> ;
  assign tdata[58] = \<const0> ;
  assign tdata[57] = \<const0> ;
  assign tdata[56] = \<const0> ;
  assign tdata[55] = \<const0> ;
  assign tdata[54] = \<const0> ;
  assign tdata[53] = \<const0> ;
  assign tdata[52] = \<const0> ;
  assign tdata[51] = \<const0> ;
  assign tdata[50] = \<const0> ;
  assign tdata[49] = \<const0> ;
  assign tdata[48] = \<const0> ;
  assign tdata[47] = \<const0> ;
  assign tdata[46] = \<const0> ;
  assign tdata[45] = \<const0> ;
  assign tdata[44] = \<const0> ;
  assign tdata[43] = \<const0> ;
  assign tdata[42] = \<const0> ;
  assign tdata[41] = \<const0> ;
  assign tdata[40] = \<const0> ;
  assign tdata[39] = \<const0> ;
  assign tdata[38] = \<const0> ;
  assign tdata[37] = \<const0> ;
  assign tdata[36] = \<const0> ;
  assign tdata[35] = \<const0> ;
  assign tdata[34] = \<const0> ;
  assign tdata[33] = \<const0> ;
  assign tdata[32] = \<const0> ;
  assign tdata[31] = \<const0> ;
  assign tdata[30] = \<const0> ;
  assign tdata[29] = \<const0> ;
  assign tdata[28] = \<const0> ;
  assign tdata[27] = \<const0> ;
  assign tdata[26] = \<const0> ;
  assign tdata[25] = \<const0> ;
  assign tdata[24] = \<const0> ;
  assign tdata[23] = \<const0> ;
  assign tdata[22] = \<const0> ;
  assign tdata[21] = \<const0> ;
  assign tdata[20] = \<const0> ;
  assign tdata[19] = \<const0> ;
  assign tdata[18] = \<const0> ;
  assign tdata[17] = \<const0> ;
  assign tdata[16] = \<const0> ;
  assign tdata[15] = \<const0> ;
  assign tdata[14] = \<const0> ;
  assign tdata[13] = \<const0> ;
  assign tdata[12] = \<const0> ;
  assign tdata[11] = \<const0> ;
  assign tdata[10] = \<const0> ;
  assign tdata[9] = \<const0> ;
  assign tdata[8] = \<const0> ;
  assign tdata[7] = \<const0> ;
  assign tdata[6] = \<const0> ;
  assign tdata[5] = \<const0> ;
  assign tdata[4] = \<const0> ;
  assign tdata[3] = \<const0> ;
  assign tdata[2] = \<const0> ;
  assign tdata[1] = \<const0> ;
  assign tdata[0] = \<const0> ;
  assign tlast = \<const0> ;
  assign tvalid = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dds_config_ctrl inst
       (.aresetn_o(aresetn_o),
        .clk(clk),
        .strobe(strobe));
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
