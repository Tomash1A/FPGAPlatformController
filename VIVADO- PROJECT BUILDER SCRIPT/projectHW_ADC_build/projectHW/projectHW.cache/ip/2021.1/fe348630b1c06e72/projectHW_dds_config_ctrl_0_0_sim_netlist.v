// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Sun Jun 28 14:38:34 2026
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
   (tlast,
    aresetn_o,
    tvalid,
    tdata,
    clk,
    strobe,
    data_word,
    tready);
  output tlast;
  output aresetn_o;
  output tvalid;
  output [63:0]tdata;
  input clk;
  input [2:0]strobe;
  input [31:0]data_word;
  input tready;

  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_2_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire \FSM_onehot_state_reg_n_0_[4] ;
  wire \FSM_onehot_state_reg_n_0_[5] ;
  wire aresetn_o;
  wire clk;
  wire [31:0]data_word;
  wire [63:0]in6;
  wire [63:0]in7;
  wire out_pinc_ab;
  wire [31:0]pinc_ab_r;
  wire \pinc_ab_r[31]_i_2_n_0 ;
  wire pinc_ab_r_0;
  wire [31:0]pinc_cd_r;
  wire pinc_cd_r_1;
  wire [31:0]poff_ab_r;
  wire poff_ab_r_2;
  wire [2:0]strobe;
  wire [2:0]strobe_prev;
  wire [63:0]tdata;
  wire tlast;
  wire tready;
  wire tvalid;

  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF2)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(tready),
        .I1(\FSM_onehot_state[1]_i_2_n_0 ),
        .I2(poff_ab_r_2),
        .I3(pinc_cd_r_1),
        .I4(out_pinc_ab),
        .I5(pinc_ab_r_0),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_onehot_state[1]_i_2 
       (.I0(tlast),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\FSM_onehot_state[1]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "rx_w0:000001,rx_w1:100000,rx_w2:010000,rx_w3:001000,tx_chan0:000100,tx_chan1:000010," *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk),
        .CE(\FSM_onehot_state[1]_i_1_n_0 ),
        .D(tlast),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "rx_w0:000001,rx_w1:100000,rx_w2:010000,rx_w3:001000,tx_chan0:000100,tx_chan1:000010," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk),
        .CE(\FSM_onehot_state[1]_i_1_n_0 ),
        .D(\FSM_onehot_state_reg_n_0_[2] ),
        .Q(tlast),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "rx_w0:000001,rx_w1:100000,rx_w2:010000,rx_w3:001000,tx_chan0:000100,tx_chan1:000010," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk),
        .CE(\FSM_onehot_state[1]_i_1_n_0 ),
        .D(\FSM_onehot_state_reg_n_0_[3] ),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "rx_w0:000001,rx_w1:100000,rx_w2:010000,rx_w3:001000,tx_chan0:000100,tx_chan1:000010," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(clk),
        .CE(\FSM_onehot_state[1]_i_1_n_0 ),
        .D(\FSM_onehot_state_reg_n_0_[4] ),
        .Q(\FSM_onehot_state_reg_n_0_[3] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "rx_w0:000001,rx_w1:100000,rx_w2:010000,rx_w3:001000,tx_chan0:000100,tx_chan1:000010," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(clk),
        .CE(\FSM_onehot_state[1]_i_1_n_0 ),
        .D(\FSM_onehot_state_reg_n_0_[5] ),
        .Q(\FSM_onehot_state_reg_n_0_[4] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "rx_w0:000001,rx_w1:100000,rx_w2:010000,rx_w3:001000,tx_chan0:000100,tx_chan1:000010," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[5] 
       (.C(clk),
        .CE(\FSM_onehot_state[1]_i_1_n_0 ),
        .D(\FSM_onehot_state_reg_n_0_[0] ),
        .Q(\FSM_onehot_state_reg_n_0_[5] ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h1)) 
    aresetn_o_INST_0
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .O(aresetn_o));
  LUT5 #(
    .INIT(32'h00200000)) 
    \out_pinc_ab[31]_i_1 
       (.I0(\pinc_ab_r[31]_i_2_n_0 ),
        .I1(strobe[0]),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(strobe[1]),
        .I4(strobe[2]),
        .O(out_pinc_ab));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_ab_reg[0] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_ab_r[0]),
        .Q(in6[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_ab_reg[10] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_ab_r[10]),
        .Q(in6[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_ab_reg[11] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_ab_r[11]),
        .Q(in6[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_ab_reg[12] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_ab_r[12]),
        .Q(in6[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_ab_reg[13] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_ab_r[13]),
        .Q(in6[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_ab_reg[14] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_ab_r[14]),
        .Q(in6[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_ab_reg[15] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_ab_r[15]),
        .Q(in6[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_ab_reg[16] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_ab_r[16]),
        .Q(in6[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_ab_reg[17] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_ab_r[17]),
        .Q(in6[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_ab_reg[18] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_ab_r[18]),
        .Q(in6[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_ab_reg[19] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_ab_r[19]),
        .Q(in6[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_ab_reg[1] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_ab_r[1]),
        .Q(in6[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_ab_reg[20] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_ab_r[20]),
        .Q(in6[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_ab_reg[21] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_ab_r[21]),
        .Q(in6[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_ab_reg[22] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_ab_r[22]),
        .Q(in6[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_ab_reg[23] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_ab_r[23]),
        .Q(in6[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_ab_reg[24] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_ab_r[24]),
        .Q(in6[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_ab_reg[25] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_ab_r[25]),
        .Q(in6[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_ab_reg[26] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_ab_r[26]),
        .Q(in6[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_ab_reg[27] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_ab_r[27]),
        .Q(in6[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_ab_reg[28] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_ab_r[28]),
        .Q(in6[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_ab_reg[29] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_ab_r[29]),
        .Q(in6[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_ab_reg[2] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_ab_r[2]),
        .Q(in6[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_ab_reg[30] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_ab_r[30]),
        .Q(in6[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_ab_reg[31] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_ab_r[31]),
        .Q(in6[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_ab_reg[3] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_ab_r[3]),
        .Q(in6[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_ab_reg[4] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_ab_r[4]),
        .Q(in6[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_ab_reg[5] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_ab_r[5]),
        .Q(in6[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_ab_reg[6] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_ab_r[6]),
        .Q(in6[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_ab_reg[7] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_ab_r[7]),
        .Q(in6[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_ab_reg[8] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_ab_r[8]),
        .Q(in6[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_ab_reg[9] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_ab_r[9]),
        .Q(in6[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_cd_reg[0] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_cd_r[0]),
        .Q(in7[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_cd_reg[10] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_cd_r[10]),
        .Q(in7[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_cd_reg[11] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_cd_r[11]),
        .Q(in7[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_cd_reg[12] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_cd_r[12]),
        .Q(in7[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_cd_reg[13] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_cd_r[13]),
        .Q(in7[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_cd_reg[14] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_cd_r[14]),
        .Q(in7[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_cd_reg[15] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_cd_r[15]),
        .Q(in7[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_cd_reg[16] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_cd_r[16]),
        .Q(in7[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_cd_reg[17] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_cd_r[17]),
        .Q(in7[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_cd_reg[18] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_cd_r[18]),
        .Q(in7[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_cd_reg[19] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_cd_r[19]),
        .Q(in7[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_cd_reg[1] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_cd_r[1]),
        .Q(in7[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_cd_reg[20] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_cd_r[20]),
        .Q(in7[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_cd_reg[21] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_cd_r[21]),
        .Q(in7[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_cd_reg[22] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_cd_r[22]),
        .Q(in7[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_cd_reg[23] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_cd_r[23]),
        .Q(in7[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_cd_reg[24] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_cd_r[24]),
        .Q(in7[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_cd_reg[25] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_cd_r[25]),
        .Q(in7[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_cd_reg[26] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_cd_r[26]),
        .Q(in7[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_cd_reg[27] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_cd_r[27]),
        .Q(in7[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_cd_reg[28] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_cd_r[28]),
        .Q(in7[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_cd_reg[29] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_cd_r[29]),
        .Q(in7[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_cd_reg[2] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_cd_r[2]),
        .Q(in7[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_cd_reg[30] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_cd_r[30]),
        .Q(in7[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_cd_reg[31] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_cd_r[31]),
        .Q(in7[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_cd_reg[3] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_cd_r[3]),
        .Q(in7[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_cd_reg[4] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_cd_r[4]),
        .Q(in7[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_cd_reg[5] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_cd_r[5]),
        .Q(in7[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_cd_reg[6] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_cd_r[6]),
        .Q(in7[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_cd_reg[7] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_cd_r[7]),
        .Q(in7[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_cd_reg[8] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_cd_r[8]),
        .Q(in7[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_cd_reg[9] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_cd_r[9]),
        .Q(in7[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_ab_reg[0] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(poff_ab_r[0]),
        .Q(in6[32]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_ab_reg[10] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(poff_ab_r[10]),
        .Q(in6[42]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_ab_reg[11] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(poff_ab_r[11]),
        .Q(in6[43]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_ab_reg[12] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(poff_ab_r[12]),
        .Q(in6[44]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_ab_reg[13] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(poff_ab_r[13]),
        .Q(in6[45]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_ab_reg[14] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(poff_ab_r[14]),
        .Q(in6[46]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_ab_reg[15] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(poff_ab_r[15]),
        .Q(in6[47]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_ab_reg[16] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(poff_ab_r[16]),
        .Q(in6[48]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_ab_reg[17] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(poff_ab_r[17]),
        .Q(in6[49]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_ab_reg[18] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(poff_ab_r[18]),
        .Q(in6[50]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_ab_reg[19] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(poff_ab_r[19]),
        .Q(in6[51]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_ab_reg[1] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(poff_ab_r[1]),
        .Q(in6[33]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_ab_reg[20] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(poff_ab_r[20]),
        .Q(in6[52]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_ab_reg[21] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(poff_ab_r[21]),
        .Q(in6[53]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_ab_reg[22] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(poff_ab_r[22]),
        .Q(in6[54]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_ab_reg[23] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(poff_ab_r[23]),
        .Q(in6[55]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_ab_reg[24] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(poff_ab_r[24]),
        .Q(in6[56]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_ab_reg[25] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(poff_ab_r[25]),
        .Q(in6[57]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_ab_reg[26] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(poff_ab_r[26]),
        .Q(in6[58]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_ab_reg[27] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(poff_ab_r[27]),
        .Q(in6[59]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_ab_reg[28] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(poff_ab_r[28]),
        .Q(in6[60]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_ab_reg[29] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(poff_ab_r[29]),
        .Q(in6[61]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_ab_reg[2] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(poff_ab_r[2]),
        .Q(in6[34]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_ab_reg[30] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(poff_ab_r[30]),
        .Q(in6[62]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_ab_reg[31] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(poff_ab_r[31]),
        .Q(in6[63]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_ab_reg[3] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(poff_ab_r[3]),
        .Q(in6[35]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_ab_reg[4] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(poff_ab_r[4]),
        .Q(in6[36]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_ab_reg[5] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(poff_ab_r[5]),
        .Q(in6[37]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_ab_reg[6] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(poff_ab_r[6]),
        .Q(in6[38]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_ab_reg[7] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(poff_ab_r[7]),
        .Q(in6[39]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_ab_reg[8] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(poff_ab_r[8]),
        .Q(in6[40]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_ab_reg[9] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(poff_ab_r[9]),
        .Q(in6[41]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_cd_reg[0] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(data_word[0]),
        .Q(in7[32]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_cd_reg[10] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(data_word[10]),
        .Q(in7[42]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_cd_reg[11] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(data_word[11]),
        .Q(in7[43]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_cd_reg[12] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(data_word[12]),
        .Q(in7[44]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_cd_reg[13] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(data_word[13]),
        .Q(in7[45]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_cd_reg[14] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(data_word[14]),
        .Q(in7[46]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_cd_reg[15] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(data_word[15]),
        .Q(in7[47]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_cd_reg[16] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(data_word[16]),
        .Q(in7[48]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_cd_reg[17] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(data_word[17]),
        .Q(in7[49]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_cd_reg[18] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(data_word[18]),
        .Q(in7[50]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_cd_reg[19] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(data_word[19]),
        .Q(in7[51]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_cd_reg[1] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(data_word[1]),
        .Q(in7[33]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_cd_reg[20] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(data_word[20]),
        .Q(in7[52]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_cd_reg[21] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(data_word[21]),
        .Q(in7[53]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_cd_reg[22] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(data_word[22]),
        .Q(in7[54]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_cd_reg[23] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(data_word[23]),
        .Q(in7[55]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_cd_reg[24] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(data_word[24]),
        .Q(in7[56]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_cd_reg[25] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(data_word[25]),
        .Q(in7[57]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_cd_reg[26] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(data_word[26]),
        .Q(in7[58]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_cd_reg[27] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(data_word[27]),
        .Q(in7[59]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_cd_reg[28] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(data_word[28]),
        .Q(in7[60]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_cd_reg[29] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(data_word[29]),
        .Q(in7[61]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_cd_reg[2] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(data_word[2]),
        .Q(in7[34]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_cd_reg[30] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(data_word[30]),
        .Q(in7[62]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_cd_reg[31] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(data_word[31]),
        .Q(in7[63]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_cd_reg[3] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(data_word[3]),
        .Q(in7[35]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_cd_reg[4] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(data_word[4]),
        .Q(in7[36]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_cd_reg[5] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(data_word[5]),
        .Q(in7[37]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_cd_reg[6] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(data_word[6]),
        .Q(in7[38]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_cd_reg[7] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(data_word[7]),
        .Q(in7[39]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_cd_reg[8] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(data_word[8]),
        .Q(in7[40]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_cd_reg[9] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(data_word[9]),
        .Q(in7[41]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00200000)) 
    \pinc_ab_r[31]_i_1 
       (.I0(\pinc_ab_r[31]_i_2_n_0 ),
        .I1(strobe[2]),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(strobe[1]),
        .I4(strobe[0]),
        .O(pinc_ab_r_0));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \pinc_ab_r[31]_i_2 
       (.I0(strobe_prev[2]),
        .I1(strobe[2]),
        .I2(strobe[0]),
        .I3(strobe_prev[0]),
        .I4(strobe[1]),
        .I5(strobe_prev[1]),
        .O(\pinc_ab_r[31]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pinc_ab_r_reg[0] 
       (.C(clk),
        .CE(pinc_ab_r_0),
        .D(data_word[0]),
        .Q(pinc_ab_r[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pinc_ab_r_reg[10] 
       (.C(clk),
        .CE(pinc_ab_r_0),
        .D(data_word[10]),
        .Q(pinc_ab_r[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pinc_ab_r_reg[11] 
       (.C(clk),
        .CE(pinc_ab_r_0),
        .D(data_word[11]),
        .Q(pinc_ab_r[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pinc_ab_r_reg[12] 
       (.C(clk),
        .CE(pinc_ab_r_0),
        .D(data_word[12]),
        .Q(pinc_ab_r[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pinc_ab_r_reg[13] 
       (.C(clk),
        .CE(pinc_ab_r_0),
        .D(data_word[13]),
        .Q(pinc_ab_r[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pinc_ab_r_reg[14] 
       (.C(clk),
        .CE(pinc_ab_r_0),
        .D(data_word[14]),
        .Q(pinc_ab_r[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pinc_ab_r_reg[15] 
       (.C(clk),
        .CE(pinc_ab_r_0),
        .D(data_word[15]),
        .Q(pinc_ab_r[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pinc_ab_r_reg[16] 
       (.C(clk),
        .CE(pinc_ab_r_0),
        .D(data_word[16]),
        .Q(pinc_ab_r[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pinc_ab_r_reg[17] 
       (.C(clk),
        .CE(pinc_ab_r_0),
        .D(data_word[17]),
        .Q(pinc_ab_r[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pinc_ab_r_reg[18] 
       (.C(clk),
        .CE(pinc_ab_r_0),
        .D(data_word[18]),
        .Q(pinc_ab_r[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pinc_ab_r_reg[19] 
       (.C(clk),
        .CE(pinc_ab_r_0),
        .D(data_word[19]),
        .Q(pinc_ab_r[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pinc_ab_r_reg[1] 
       (.C(clk),
        .CE(pinc_ab_r_0),
        .D(data_word[1]),
        .Q(pinc_ab_r[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pinc_ab_r_reg[20] 
       (.C(clk),
        .CE(pinc_ab_r_0),
        .D(data_word[20]),
        .Q(pinc_ab_r[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pinc_ab_r_reg[21] 
       (.C(clk),
        .CE(pinc_ab_r_0),
        .D(data_word[21]),
        .Q(pinc_ab_r[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pinc_ab_r_reg[22] 
       (.C(clk),
        .CE(pinc_ab_r_0),
        .D(data_word[22]),
        .Q(pinc_ab_r[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pinc_ab_r_reg[23] 
       (.C(clk),
        .CE(pinc_ab_r_0),
        .D(data_word[23]),
        .Q(pinc_ab_r[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pinc_ab_r_reg[24] 
       (.C(clk),
        .CE(pinc_ab_r_0),
        .D(data_word[24]),
        .Q(pinc_ab_r[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pinc_ab_r_reg[25] 
       (.C(clk),
        .CE(pinc_ab_r_0),
        .D(data_word[25]),
        .Q(pinc_ab_r[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pinc_ab_r_reg[26] 
       (.C(clk),
        .CE(pinc_ab_r_0),
        .D(data_word[26]),
        .Q(pinc_ab_r[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pinc_ab_r_reg[27] 
       (.C(clk),
        .CE(pinc_ab_r_0),
        .D(data_word[27]),
        .Q(pinc_ab_r[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pinc_ab_r_reg[28] 
       (.C(clk),
        .CE(pinc_ab_r_0),
        .D(data_word[28]),
        .Q(pinc_ab_r[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pinc_ab_r_reg[29] 
       (.C(clk),
        .CE(pinc_ab_r_0),
        .D(data_word[29]),
        .Q(pinc_ab_r[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pinc_ab_r_reg[2] 
       (.C(clk),
        .CE(pinc_ab_r_0),
        .D(data_word[2]),
        .Q(pinc_ab_r[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pinc_ab_r_reg[30] 
       (.C(clk),
        .CE(pinc_ab_r_0),
        .D(data_word[30]),
        .Q(pinc_ab_r[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pinc_ab_r_reg[31] 
       (.C(clk),
        .CE(pinc_ab_r_0),
        .D(data_word[31]),
        .Q(pinc_ab_r[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pinc_ab_r_reg[3] 
       (.C(clk),
        .CE(pinc_ab_r_0),
        .D(data_word[3]),
        .Q(pinc_ab_r[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pinc_ab_r_reg[4] 
       (.C(clk),
        .CE(pinc_ab_r_0),
        .D(data_word[4]),
        .Q(pinc_ab_r[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pinc_ab_r_reg[5] 
       (.C(clk),
        .CE(pinc_ab_r_0),
        .D(data_word[5]),
        .Q(pinc_ab_r[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pinc_ab_r_reg[6] 
       (.C(clk),
        .CE(pinc_ab_r_0),
        .D(data_word[6]),
        .Q(pinc_ab_r[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pinc_ab_r_reg[7] 
       (.C(clk),
        .CE(pinc_ab_r_0),
        .D(data_word[7]),
        .Q(pinc_ab_r[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pinc_ab_r_reg[8] 
       (.C(clk),
        .CE(pinc_ab_r_0),
        .D(data_word[8]),
        .Q(pinc_ab_r[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pinc_ab_r_reg[9] 
       (.C(clk),
        .CE(pinc_ab_r_0),
        .D(data_word[9]),
        .Q(pinc_ab_r[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00800000)) 
    \pinc_cd_r[31]_i_1 
       (.I0(\pinc_ab_r[31]_i_2_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[4] ),
        .I2(strobe[0]),
        .I3(strobe[2]),
        .I4(strobe[1]),
        .O(pinc_cd_r_1));
  FDRE #(
    .INIT(1'b0)) 
    \pinc_cd_r_reg[0] 
       (.C(clk),
        .CE(pinc_cd_r_1),
        .D(data_word[0]),
        .Q(pinc_cd_r[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pinc_cd_r_reg[10] 
       (.C(clk),
        .CE(pinc_cd_r_1),
        .D(data_word[10]),
        .Q(pinc_cd_r[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pinc_cd_r_reg[11] 
       (.C(clk),
        .CE(pinc_cd_r_1),
        .D(data_word[11]),
        .Q(pinc_cd_r[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pinc_cd_r_reg[12] 
       (.C(clk),
        .CE(pinc_cd_r_1),
        .D(data_word[12]),
        .Q(pinc_cd_r[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pinc_cd_r_reg[13] 
       (.C(clk),
        .CE(pinc_cd_r_1),
        .D(data_word[13]),
        .Q(pinc_cd_r[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pinc_cd_r_reg[14] 
       (.C(clk),
        .CE(pinc_cd_r_1),
        .D(data_word[14]),
        .Q(pinc_cd_r[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pinc_cd_r_reg[15] 
       (.C(clk),
        .CE(pinc_cd_r_1),
        .D(data_word[15]),
        .Q(pinc_cd_r[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pinc_cd_r_reg[16] 
       (.C(clk),
        .CE(pinc_cd_r_1),
        .D(data_word[16]),
        .Q(pinc_cd_r[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pinc_cd_r_reg[17] 
       (.C(clk),
        .CE(pinc_cd_r_1),
        .D(data_word[17]),
        .Q(pinc_cd_r[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pinc_cd_r_reg[18] 
       (.C(clk),
        .CE(pinc_cd_r_1),
        .D(data_word[18]),
        .Q(pinc_cd_r[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pinc_cd_r_reg[19] 
       (.C(clk),
        .CE(pinc_cd_r_1),
        .D(data_word[19]),
        .Q(pinc_cd_r[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pinc_cd_r_reg[1] 
       (.C(clk),
        .CE(pinc_cd_r_1),
        .D(data_word[1]),
        .Q(pinc_cd_r[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pinc_cd_r_reg[20] 
       (.C(clk),
        .CE(pinc_cd_r_1),
        .D(data_word[20]),
        .Q(pinc_cd_r[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pinc_cd_r_reg[21] 
       (.C(clk),
        .CE(pinc_cd_r_1),
        .D(data_word[21]),
        .Q(pinc_cd_r[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pinc_cd_r_reg[22] 
       (.C(clk),
        .CE(pinc_cd_r_1),
        .D(data_word[22]),
        .Q(pinc_cd_r[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pinc_cd_r_reg[23] 
       (.C(clk),
        .CE(pinc_cd_r_1),
        .D(data_word[23]),
        .Q(pinc_cd_r[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pinc_cd_r_reg[24] 
       (.C(clk),
        .CE(pinc_cd_r_1),
        .D(data_word[24]),
        .Q(pinc_cd_r[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pinc_cd_r_reg[25] 
       (.C(clk),
        .CE(pinc_cd_r_1),
        .D(data_word[25]),
        .Q(pinc_cd_r[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pinc_cd_r_reg[26] 
       (.C(clk),
        .CE(pinc_cd_r_1),
        .D(data_word[26]),
        .Q(pinc_cd_r[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pinc_cd_r_reg[27] 
       (.C(clk),
        .CE(pinc_cd_r_1),
        .D(data_word[27]),
        .Q(pinc_cd_r[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pinc_cd_r_reg[28] 
       (.C(clk),
        .CE(pinc_cd_r_1),
        .D(data_word[28]),
        .Q(pinc_cd_r[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pinc_cd_r_reg[29] 
       (.C(clk),
        .CE(pinc_cd_r_1),
        .D(data_word[29]),
        .Q(pinc_cd_r[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pinc_cd_r_reg[2] 
       (.C(clk),
        .CE(pinc_cd_r_1),
        .D(data_word[2]),
        .Q(pinc_cd_r[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pinc_cd_r_reg[30] 
       (.C(clk),
        .CE(pinc_cd_r_1),
        .D(data_word[30]),
        .Q(pinc_cd_r[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pinc_cd_r_reg[31] 
       (.C(clk),
        .CE(pinc_cd_r_1),
        .D(data_word[31]),
        .Q(pinc_cd_r[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pinc_cd_r_reg[3] 
       (.C(clk),
        .CE(pinc_cd_r_1),
        .D(data_word[3]),
        .Q(pinc_cd_r[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pinc_cd_r_reg[4] 
       (.C(clk),
        .CE(pinc_cd_r_1),
        .D(data_word[4]),
        .Q(pinc_cd_r[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pinc_cd_r_reg[5] 
       (.C(clk),
        .CE(pinc_cd_r_1),
        .D(data_word[5]),
        .Q(pinc_cd_r[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pinc_cd_r_reg[6] 
       (.C(clk),
        .CE(pinc_cd_r_1),
        .D(data_word[6]),
        .Q(pinc_cd_r[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pinc_cd_r_reg[7] 
       (.C(clk),
        .CE(pinc_cd_r_1),
        .D(data_word[7]),
        .Q(pinc_cd_r[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pinc_cd_r_reg[8] 
       (.C(clk),
        .CE(pinc_cd_r_1),
        .D(data_word[8]),
        .Q(pinc_cd_r[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pinc_cd_r_reg[9] 
       (.C(clk),
        .CE(pinc_cd_r_1),
        .D(data_word[9]),
        .Q(pinc_cd_r[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00200000)) 
    \poff_ab_r[31]_i_1 
       (.I0(\pinc_ab_r[31]_i_2_n_0 ),
        .I1(strobe[0]),
        .I2(\FSM_onehot_state_reg_n_0_[5] ),
        .I3(strobe[2]),
        .I4(strobe[1]),
        .O(poff_ab_r_2));
  FDRE #(
    .INIT(1'b0)) 
    \poff_ab_r_reg[0] 
       (.C(clk),
        .CE(poff_ab_r_2),
        .D(data_word[0]),
        .Q(poff_ab_r[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \poff_ab_r_reg[10] 
       (.C(clk),
        .CE(poff_ab_r_2),
        .D(data_word[10]),
        .Q(poff_ab_r[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \poff_ab_r_reg[11] 
       (.C(clk),
        .CE(poff_ab_r_2),
        .D(data_word[11]),
        .Q(poff_ab_r[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \poff_ab_r_reg[12] 
       (.C(clk),
        .CE(poff_ab_r_2),
        .D(data_word[12]),
        .Q(poff_ab_r[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \poff_ab_r_reg[13] 
       (.C(clk),
        .CE(poff_ab_r_2),
        .D(data_word[13]),
        .Q(poff_ab_r[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \poff_ab_r_reg[14] 
       (.C(clk),
        .CE(poff_ab_r_2),
        .D(data_word[14]),
        .Q(poff_ab_r[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \poff_ab_r_reg[15] 
       (.C(clk),
        .CE(poff_ab_r_2),
        .D(data_word[15]),
        .Q(poff_ab_r[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \poff_ab_r_reg[16] 
       (.C(clk),
        .CE(poff_ab_r_2),
        .D(data_word[16]),
        .Q(poff_ab_r[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \poff_ab_r_reg[17] 
       (.C(clk),
        .CE(poff_ab_r_2),
        .D(data_word[17]),
        .Q(poff_ab_r[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \poff_ab_r_reg[18] 
       (.C(clk),
        .CE(poff_ab_r_2),
        .D(data_word[18]),
        .Q(poff_ab_r[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \poff_ab_r_reg[19] 
       (.C(clk),
        .CE(poff_ab_r_2),
        .D(data_word[19]),
        .Q(poff_ab_r[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \poff_ab_r_reg[1] 
       (.C(clk),
        .CE(poff_ab_r_2),
        .D(data_word[1]),
        .Q(poff_ab_r[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \poff_ab_r_reg[20] 
       (.C(clk),
        .CE(poff_ab_r_2),
        .D(data_word[20]),
        .Q(poff_ab_r[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \poff_ab_r_reg[21] 
       (.C(clk),
        .CE(poff_ab_r_2),
        .D(data_word[21]),
        .Q(poff_ab_r[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \poff_ab_r_reg[22] 
       (.C(clk),
        .CE(poff_ab_r_2),
        .D(data_word[22]),
        .Q(poff_ab_r[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \poff_ab_r_reg[23] 
       (.C(clk),
        .CE(poff_ab_r_2),
        .D(data_word[23]),
        .Q(poff_ab_r[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \poff_ab_r_reg[24] 
       (.C(clk),
        .CE(poff_ab_r_2),
        .D(data_word[24]),
        .Q(poff_ab_r[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \poff_ab_r_reg[25] 
       (.C(clk),
        .CE(poff_ab_r_2),
        .D(data_word[25]),
        .Q(poff_ab_r[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \poff_ab_r_reg[26] 
       (.C(clk),
        .CE(poff_ab_r_2),
        .D(data_word[26]),
        .Q(poff_ab_r[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \poff_ab_r_reg[27] 
       (.C(clk),
        .CE(poff_ab_r_2),
        .D(data_word[27]),
        .Q(poff_ab_r[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \poff_ab_r_reg[28] 
       (.C(clk),
        .CE(poff_ab_r_2),
        .D(data_word[28]),
        .Q(poff_ab_r[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \poff_ab_r_reg[29] 
       (.C(clk),
        .CE(poff_ab_r_2),
        .D(data_word[29]),
        .Q(poff_ab_r[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \poff_ab_r_reg[2] 
       (.C(clk),
        .CE(poff_ab_r_2),
        .D(data_word[2]),
        .Q(poff_ab_r[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \poff_ab_r_reg[30] 
       (.C(clk),
        .CE(poff_ab_r_2),
        .D(data_word[30]),
        .Q(poff_ab_r[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \poff_ab_r_reg[31] 
       (.C(clk),
        .CE(poff_ab_r_2),
        .D(data_word[31]),
        .Q(poff_ab_r[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \poff_ab_r_reg[3] 
       (.C(clk),
        .CE(poff_ab_r_2),
        .D(data_word[3]),
        .Q(poff_ab_r[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \poff_ab_r_reg[4] 
       (.C(clk),
        .CE(poff_ab_r_2),
        .D(data_word[4]),
        .Q(poff_ab_r[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \poff_ab_r_reg[5] 
       (.C(clk),
        .CE(poff_ab_r_2),
        .D(data_word[5]),
        .Q(poff_ab_r[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \poff_ab_r_reg[6] 
       (.C(clk),
        .CE(poff_ab_r_2),
        .D(data_word[6]),
        .Q(poff_ab_r[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \poff_ab_r_reg[7] 
       (.C(clk),
        .CE(poff_ab_r_2),
        .D(data_word[7]),
        .Q(poff_ab_r[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \poff_ab_r_reg[8] 
       (.C(clk),
        .CE(poff_ab_r_2),
        .D(data_word[8]),
        .Q(poff_ab_r[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \poff_ab_r_reg[9] 
       (.C(clk),
        .CE(poff_ab_r_2),
        .D(data_word[9]),
        .Q(poff_ab_r[9]),
        .R(1'b0));
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
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[0]_INST_0 
       (.I0(in6[0]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(in7[0]),
        .I3(tlast),
        .O(tdata[0]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[10]_INST_0 
       (.I0(in6[10]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(in7[10]),
        .I3(tlast),
        .O(tdata[10]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[11]_INST_0 
       (.I0(in6[11]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(in7[11]),
        .I3(tlast),
        .O(tdata[11]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[12]_INST_0 
       (.I0(in6[12]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(in7[12]),
        .I3(tlast),
        .O(tdata[12]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[13]_INST_0 
       (.I0(in6[13]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(in7[13]),
        .I3(tlast),
        .O(tdata[13]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[14]_INST_0 
       (.I0(in6[14]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(in7[14]),
        .I3(tlast),
        .O(tdata[14]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[15]_INST_0 
       (.I0(in6[15]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(in7[15]),
        .I3(tlast),
        .O(tdata[15]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[16]_INST_0 
       (.I0(in6[16]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(in7[16]),
        .I3(tlast),
        .O(tdata[16]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[17]_INST_0 
       (.I0(in6[17]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(in7[17]),
        .I3(tlast),
        .O(tdata[17]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[18]_INST_0 
       (.I0(in6[18]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(in7[18]),
        .I3(tlast),
        .O(tdata[18]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[19]_INST_0 
       (.I0(in6[19]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(in7[19]),
        .I3(tlast),
        .O(tdata[19]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[1]_INST_0 
       (.I0(in6[1]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(in7[1]),
        .I3(tlast),
        .O(tdata[1]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[20]_INST_0 
       (.I0(in6[20]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(in7[20]),
        .I3(tlast),
        .O(tdata[20]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[21]_INST_0 
       (.I0(in6[21]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(in7[21]),
        .I3(tlast),
        .O(tdata[21]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[22]_INST_0 
       (.I0(in6[22]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(in7[22]),
        .I3(tlast),
        .O(tdata[22]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[23]_INST_0 
       (.I0(in6[23]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(in7[23]),
        .I3(tlast),
        .O(tdata[23]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[24]_INST_0 
       (.I0(in6[24]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(in7[24]),
        .I3(tlast),
        .O(tdata[24]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[25]_INST_0 
       (.I0(in6[25]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(in7[25]),
        .I3(tlast),
        .O(tdata[25]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[26]_INST_0 
       (.I0(in6[26]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(in7[26]),
        .I3(tlast),
        .O(tdata[26]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[27]_INST_0 
       (.I0(in6[27]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(in7[27]),
        .I3(tlast),
        .O(tdata[27]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[28]_INST_0 
       (.I0(in6[28]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(in7[28]),
        .I3(tlast),
        .O(tdata[28]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[29]_INST_0 
       (.I0(in6[29]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(in7[29]),
        .I3(tlast),
        .O(tdata[29]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[2]_INST_0 
       (.I0(in6[2]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(in7[2]),
        .I3(tlast),
        .O(tdata[2]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[30]_INST_0 
       (.I0(in6[30]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(in7[30]),
        .I3(tlast),
        .O(tdata[30]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[31]_INST_0 
       (.I0(in6[31]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(in7[31]),
        .I3(tlast),
        .O(tdata[31]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[32]_INST_0 
       (.I0(in6[32]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(in7[32]),
        .I3(tlast),
        .O(tdata[32]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[33]_INST_0 
       (.I0(in6[33]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(in7[33]),
        .I3(tlast),
        .O(tdata[33]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[34]_INST_0 
       (.I0(in6[34]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(in7[34]),
        .I3(tlast),
        .O(tdata[34]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[35]_INST_0 
       (.I0(in6[35]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(in7[35]),
        .I3(tlast),
        .O(tdata[35]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[36]_INST_0 
       (.I0(in6[36]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(in7[36]),
        .I3(tlast),
        .O(tdata[36]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[37]_INST_0 
       (.I0(in6[37]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(in7[37]),
        .I3(tlast),
        .O(tdata[37]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[38]_INST_0 
       (.I0(in6[38]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(in7[38]),
        .I3(tlast),
        .O(tdata[38]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[39]_INST_0 
       (.I0(in6[39]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(in7[39]),
        .I3(tlast),
        .O(tdata[39]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[3]_INST_0 
       (.I0(in6[3]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(in7[3]),
        .I3(tlast),
        .O(tdata[3]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[40]_INST_0 
       (.I0(in6[40]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(in7[40]),
        .I3(tlast),
        .O(tdata[40]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[41]_INST_0 
       (.I0(in6[41]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(in7[41]),
        .I3(tlast),
        .O(tdata[41]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[42]_INST_0 
       (.I0(in6[42]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(in7[42]),
        .I3(tlast),
        .O(tdata[42]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[43]_INST_0 
       (.I0(in6[43]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(in7[43]),
        .I3(tlast),
        .O(tdata[43]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[44]_INST_0 
       (.I0(in6[44]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(in7[44]),
        .I3(tlast),
        .O(tdata[44]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[45]_INST_0 
       (.I0(in6[45]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(in7[45]),
        .I3(tlast),
        .O(tdata[45]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[46]_INST_0 
       (.I0(in6[46]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(in7[46]),
        .I3(tlast),
        .O(tdata[46]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[47]_INST_0 
       (.I0(in6[47]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(in7[47]),
        .I3(tlast),
        .O(tdata[47]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[48]_INST_0 
       (.I0(in6[48]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(in7[48]),
        .I3(tlast),
        .O(tdata[48]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[49]_INST_0 
       (.I0(in6[49]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(in7[49]),
        .I3(tlast),
        .O(tdata[49]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[4]_INST_0 
       (.I0(in6[4]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(in7[4]),
        .I3(tlast),
        .O(tdata[4]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[50]_INST_0 
       (.I0(in6[50]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(in7[50]),
        .I3(tlast),
        .O(tdata[50]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[51]_INST_0 
       (.I0(in6[51]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(in7[51]),
        .I3(tlast),
        .O(tdata[51]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[52]_INST_0 
       (.I0(in6[52]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(in7[52]),
        .I3(tlast),
        .O(tdata[52]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[53]_INST_0 
       (.I0(in6[53]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(in7[53]),
        .I3(tlast),
        .O(tdata[53]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[54]_INST_0 
       (.I0(in6[54]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(in7[54]),
        .I3(tlast),
        .O(tdata[54]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[55]_INST_0 
       (.I0(in6[55]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(in7[55]),
        .I3(tlast),
        .O(tdata[55]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[56]_INST_0 
       (.I0(in6[56]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(in7[56]),
        .I3(tlast),
        .O(tdata[56]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[57]_INST_0 
       (.I0(in6[57]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(in7[57]),
        .I3(tlast),
        .O(tdata[57]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[58]_INST_0 
       (.I0(in6[58]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(in7[58]),
        .I3(tlast),
        .O(tdata[58]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[59]_INST_0 
       (.I0(in6[59]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(in7[59]),
        .I3(tlast),
        .O(tdata[59]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[5]_INST_0 
       (.I0(in6[5]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(in7[5]),
        .I3(tlast),
        .O(tdata[5]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[60]_INST_0 
       (.I0(in6[60]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(in7[60]),
        .I3(tlast),
        .O(tdata[60]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[61]_INST_0 
       (.I0(in6[61]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(in7[61]),
        .I3(tlast),
        .O(tdata[61]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[62]_INST_0 
       (.I0(in6[62]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(in7[62]),
        .I3(tlast),
        .O(tdata[62]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[63]_INST_0 
       (.I0(in6[63]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(in7[63]),
        .I3(tlast),
        .O(tdata[63]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[6]_INST_0 
       (.I0(in6[6]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(in7[6]),
        .I3(tlast),
        .O(tdata[6]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[7]_INST_0 
       (.I0(in6[7]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(in7[7]),
        .I3(tlast),
        .O(tdata[7]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[8]_INST_0 
       (.I0(in6[8]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(in7[8]),
        .I3(tlast),
        .O(tdata[8]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[9]_INST_0 
       (.I0(in6[9]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(in7[9]),
        .I3(tlast),
        .O(tdata[9]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    tvalid_INST_0
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(tlast),
        .O(tvalid));
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

  wire aresetn_o;
  wire clk;
  wire [31:0]data_word;
  wire [2:0]strobe;
  wire [63:0]tdata;
  wire tlast;
  wire tready;
  wire tvalid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dds_config_ctrl inst
       (.aresetn_o(aresetn_o),
        .clk(clk),
        .data_word(data_word),
        .strobe(strobe),
        .tdata(tdata),
        .tlast(tlast),
        .tready(tready),
        .tvalid(tvalid));
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
