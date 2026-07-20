// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Sun Jun 28 14:59:48 2026
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

  wire \FSM_onehot_state[6]_i_1_n_0 ;
  wire \FSM_onehot_state[6]_i_2_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire \FSM_onehot_state_reg_n_0_[4] ;
  wire \FSM_onehot_state_reg_n_0_[5] ;
  wire aresetn_o;
  wire clk;
  wire [31:0]data_word;
  wire [63:0]in10;
  wire [63:0]in9;
  wire out_pinc_ab;
  wire [31:0]pinc_ab_r;
  wire pinc_ab_r1__4;
  wire \pinc_ab_r[31]_i_2_n_0 ;
  wire pinc_ab_r_0;
  wire [31:0]pinc_cd_r;
  wire pinc_cd_r_1;
  wire [31:0]poff_ab_r;
  wire \poff_ab_r[31]_i_2_n_0 ;
  wire poff_ab_r_2;
  wire \reset_cnt[0]_i_1_n_0 ;
  wire \reset_cnt[1]_i_1_n_0 ;
  wire \reset_cnt_reg_n_0_[0] ;
  wire \reset_cnt_reg_n_0_[1] ;
  wire [2:0]strobe;
  wire [2:0]strobe_prev;
  wire [63:0]tdata;
  wire tlast;
  wire tready;
  wire tvalid;

  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_onehot_state[6]_i_1 
       (.I0(\FSM_onehot_state[6]_i_2_n_0 ),
        .I1(pinc_ab_r_0),
        .I2(out_pinc_ab),
        .I3(poff_ab_r_2),
        .I4(pinc_cd_r_1),
        .O(\FSM_onehot_state[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFA8A8A8)) 
    \FSM_onehot_state[6]_i_2 
       (.I0(tready),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .I2(tlast),
        .I3(\FSM_onehot_state_reg_n_0_[4] ),
        .I4(\reset_cnt_reg_n_0_[1] ),
        .O(\FSM_onehot_state[6]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "rx_w0:0000001,rx_w1:0000010,rx_w2:0000100,rx_w3:0001000,reset_dds:0010000,tx_chan0:0100000,tx_chan1:1000000," *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk),
        .CE(\FSM_onehot_state[6]_i_1_n_0 ),
        .D(tlast),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "rx_w0:0000001,rx_w1:0000010,rx_w2:0000100,rx_w3:0001000,reset_dds:0010000,tx_chan0:0100000,tx_chan1:1000000," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk),
        .CE(\FSM_onehot_state[6]_i_1_n_0 ),
        .D(\FSM_onehot_state_reg_n_0_[0] ),
        .Q(\FSM_onehot_state_reg_n_0_[1] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "rx_w0:0000001,rx_w1:0000010,rx_w2:0000100,rx_w3:0001000,reset_dds:0010000,tx_chan0:0100000,tx_chan1:1000000," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk),
        .CE(\FSM_onehot_state[6]_i_1_n_0 ),
        .D(\FSM_onehot_state_reg_n_0_[1] ),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "rx_w0:0000001,rx_w1:0000010,rx_w2:0000100,rx_w3:0001000,reset_dds:0010000,tx_chan0:0100000,tx_chan1:1000000," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(clk),
        .CE(\FSM_onehot_state[6]_i_1_n_0 ),
        .D(\FSM_onehot_state_reg_n_0_[2] ),
        .Q(\FSM_onehot_state_reg_n_0_[3] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "rx_w0:0000001,rx_w1:0000010,rx_w2:0000100,rx_w3:0001000,reset_dds:0010000,tx_chan0:0100000,tx_chan1:1000000," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(clk),
        .CE(\FSM_onehot_state[6]_i_1_n_0 ),
        .D(\FSM_onehot_state_reg_n_0_[3] ),
        .Q(\FSM_onehot_state_reg_n_0_[4] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "rx_w0:0000001,rx_w1:0000010,rx_w2:0000100,rx_w3:0001000,reset_dds:0010000,tx_chan0:0100000,tx_chan1:1000000," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[5] 
       (.C(clk),
        .CE(\FSM_onehot_state[6]_i_1_n_0 ),
        .D(\FSM_onehot_state_reg_n_0_[4] ),
        .Q(\FSM_onehot_state_reg_n_0_[5] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "rx_w0:0000001,rx_w1:0000010,rx_w2:0000100,rx_w3:0001000,reset_dds:0010000,tx_chan0:0100000,tx_chan1:1000000," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[6] 
       (.C(clk),
        .CE(\FSM_onehot_state[6]_i_1_n_0 ),
        .D(\FSM_onehot_state_reg_n_0_[5] ),
        .Q(tlast),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    aresetn_o_INST_0
       (.I0(\FSM_onehot_state_reg_n_0_[4] ),
        .O(aresetn_o));
  LUT5 #(
    .INIT(32'h00080000)) 
    \out_pinc_ab[31]_i_1 
       (.I0(strobe[2]),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(strobe[0]),
        .I3(strobe[1]),
        .I4(pinc_ab_r1__4),
        .O(out_pinc_ab));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \out_pinc_ab[31]_i_2 
       (.I0(strobe_prev[0]),
        .I1(strobe[0]),
        .I2(strobe_prev[1]),
        .I3(strobe[1]),
        .I4(strobe[2]),
        .I5(strobe_prev[2]),
        .O(pinc_ab_r1__4));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_ab_reg[0] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_ab_r[0]),
        .Q(in9[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_ab_reg[10] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_ab_r[10]),
        .Q(in9[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_ab_reg[11] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_ab_r[11]),
        .Q(in9[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_ab_reg[12] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_ab_r[12]),
        .Q(in9[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_ab_reg[13] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_ab_r[13]),
        .Q(in9[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_ab_reg[14] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_ab_r[14]),
        .Q(in9[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_ab_reg[15] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_ab_r[15]),
        .Q(in9[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_ab_reg[16] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_ab_r[16]),
        .Q(in9[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_ab_reg[17] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_ab_r[17]),
        .Q(in9[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_ab_reg[18] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_ab_r[18]),
        .Q(in9[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_ab_reg[19] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_ab_r[19]),
        .Q(in9[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_ab_reg[1] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_ab_r[1]),
        .Q(in9[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_ab_reg[20] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_ab_r[20]),
        .Q(in9[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_ab_reg[21] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_ab_r[21]),
        .Q(in9[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_ab_reg[22] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_ab_r[22]),
        .Q(in9[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_ab_reg[23] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_ab_r[23]),
        .Q(in9[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_ab_reg[24] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_ab_r[24]),
        .Q(in9[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_ab_reg[25] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_ab_r[25]),
        .Q(in9[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_ab_reg[26] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_ab_r[26]),
        .Q(in9[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_ab_reg[27] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_ab_r[27]),
        .Q(in9[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_ab_reg[28] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_ab_r[28]),
        .Q(in9[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_ab_reg[29] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_ab_r[29]),
        .Q(in9[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_ab_reg[2] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_ab_r[2]),
        .Q(in9[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_ab_reg[30] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_ab_r[30]),
        .Q(in9[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_ab_reg[31] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_ab_r[31]),
        .Q(in9[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_ab_reg[3] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_ab_r[3]),
        .Q(in9[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_ab_reg[4] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_ab_r[4]),
        .Q(in9[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_ab_reg[5] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_ab_r[5]),
        .Q(in9[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_ab_reg[6] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_ab_r[6]),
        .Q(in9[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_ab_reg[7] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_ab_r[7]),
        .Q(in9[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_ab_reg[8] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_ab_r[8]),
        .Q(in9[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_ab_reg[9] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_ab_r[9]),
        .Q(in9[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_cd_reg[0] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_cd_r[0]),
        .Q(in10[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_cd_reg[10] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_cd_r[10]),
        .Q(in10[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_cd_reg[11] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_cd_r[11]),
        .Q(in10[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_cd_reg[12] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_cd_r[12]),
        .Q(in10[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_cd_reg[13] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_cd_r[13]),
        .Q(in10[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_cd_reg[14] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_cd_r[14]),
        .Q(in10[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_cd_reg[15] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_cd_r[15]),
        .Q(in10[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_cd_reg[16] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_cd_r[16]),
        .Q(in10[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_cd_reg[17] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_cd_r[17]),
        .Q(in10[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_cd_reg[18] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_cd_r[18]),
        .Q(in10[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_cd_reg[19] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_cd_r[19]),
        .Q(in10[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_cd_reg[1] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_cd_r[1]),
        .Q(in10[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_cd_reg[20] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_cd_r[20]),
        .Q(in10[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_cd_reg[21] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_cd_r[21]),
        .Q(in10[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_cd_reg[22] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_cd_r[22]),
        .Q(in10[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_cd_reg[23] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_cd_r[23]),
        .Q(in10[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_cd_reg[24] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_cd_r[24]),
        .Q(in10[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_cd_reg[25] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_cd_r[25]),
        .Q(in10[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_cd_reg[26] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_cd_r[26]),
        .Q(in10[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_cd_reg[27] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_cd_r[27]),
        .Q(in10[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_cd_reg[28] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_cd_r[28]),
        .Q(in10[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_cd_reg[29] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_cd_r[29]),
        .Q(in10[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_cd_reg[2] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_cd_r[2]),
        .Q(in10[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_cd_reg[30] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_cd_r[30]),
        .Q(in10[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_cd_reg[31] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_cd_r[31]),
        .Q(in10[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_cd_reg[3] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_cd_r[3]),
        .Q(in10[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_cd_reg[4] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_cd_r[4]),
        .Q(in10[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_cd_reg[5] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_cd_r[5]),
        .Q(in10[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_cd_reg[6] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_cd_r[6]),
        .Q(in10[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_cd_reg[7] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_cd_r[7]),
        .Q(in10[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_cd_reg[8] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_cd_r[8]),
        .Q(in10[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_pinc_cd_reg[9] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(pinc_cd_r[9]),
        .Q(in10[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_ab_reg[0] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(poff_ab_r[0]),
        .Q(in9[32]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_ab_reg[10] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(poff_ab_r[10]),
        .Q(in9[42]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_ab_reg[11] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(poff_ab_r[11]),
        .Q(in9[43]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_ab_reg[12] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(poff_ab_r[12]),
        .Q(in9[44]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_ab_reg[13] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(poff_ab_r[13]),
        .Q(in9[45]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_ab_reg[14] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(poff_ab_r[14]),
        .Q(in9[46]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_ab_reg[15] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(poff_ab_r[15]),
        .Q(in9[47]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_ab_reg[16] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(poff_ab_r[16]),
        .Q(in9[48]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_ab_reg[17] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(poff_ab_r[17]),
        .Q(in9[49]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_ab_reg[18] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(poff_ab_r[18]),
        .Q(in9[50]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_ab_reg[19] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(poff_ab_r[19]),
        .Q(in9[51]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_ab_reg[1] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(poff_ab_r[1]),
        .Q(in9[33]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_ab_reg[20] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(poff_ab_r[20]),
        .Q(in9[52]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_ab_reg[21] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(poff_ab_r[21]),
        .Q(in9[53]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_ab_reg[22] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(poff_ab_r[22]),
        .Q(in9[54]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_ab_reg[23] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(poff_ab_r[23]),
        .Q(in9[55]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_ab_reg[24] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(poff_ab_r[24]),
        .Q(in9[56]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_ab_reg[25] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(poff_ab_r[25]),
        .Q(in9[57]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_ab_reg[26] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(poff_ab_r[26]),
        .Q(in9[58]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_ab_reg[27] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(poff_ab_r[27]),
        .Q(in9[59]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_ab_reg[28] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(poff_ab_r[28]),
        .Q(in9[60]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_ab_reg[29] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(poff_ab_r[29]),
        .Q(in9[61]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_ab_reg[2] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(poff_ab_r[2]),
        .Q(in9[34]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_ab_reg[30] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(poff_ab_r[30]),
        .Q(in9[62]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_ab_reg[31] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(poff_ab_r[31]),
        .Q(in9[63]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_ab_reg[3] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(poff_ab_r[3]),
        .Q(in9[35]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_ab_reg[4] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(poff_ab_r[4]),
        .Q(in9[36]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_ab_reg[5] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(poff_ab_r[5]),
        .Q(in9[37]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_ab_reg[6] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(poff_ab_r[6]),
        .Q(in9[38]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_ab_reg[7] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(poff_ab_r[7]),
        .Q(in9[39]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_ab_reg[8] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(poff_ab_r[8]),
        .Q(in9[40]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_ab_reg[9] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(poff_ab_r[9]),
        .Q(in9[41]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_cd_reg[0] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(data_word[0]),
        .Q(in10[32]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_cd_reg[10] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(data_word[10]),
        .Q(in10[42]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_cd_reg[11] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(data_word[11]),
        .Q(in10[43]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_cd_reg[12] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(data_word[12]),
        .Q(in10[44]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_cd_reg[13] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(data_word[13]),
        .Q(in10[45]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_cd_reg[14] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(data_word[14]),
        .Q(in10[46]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_cd_reg[15] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(data_word[15]),
        .Q(in10[47]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_cd_reg[16] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(data_word[16]),
        .Q(in10[48]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_cd_reg[17] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(data_word[17]),
        .Q(in10[49]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_cd_reg[18] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(data_word[18]),
        .Q(in10[50]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_cd_reg[19] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(data_word[19]),
        .Q(in10[51]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_cd_reg[1] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(data_word[1]),
        .Q(in10[33]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_cd_reg[20] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(data_word[20]),
        .Q(in10[52]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_cd_reg[21] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(data_word[21]),
        .Q(in10[53]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_cd_reg[22] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(data_word[22]),
        .Q(in10[54]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_cd_reg[23] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(data_word[23]),
        .Q(in10[55]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_cd_reg[24] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(data_word[24]),
        .Q(in10[56]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_cd_reg[25] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(data_word[25]),
        .Q(in10[57]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_cd_reg[26] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(data_word[26]),
        .Q(in10[58]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_cd_reg[27] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(data_word[27]),
        .Q(in10[59]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_cd_reg[28] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(data_word[28]),
        .Q(in10[60]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_cd_reg[29] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(data_word[29]),
        .Q(in10[61]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_cd_reg[2] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(data_word[2]),
        .Q(in10[34]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_cd_reg[30] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(data_word[30]),
        .Q(in10[62]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_cd_reg[31] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(data_word[31]),
        .Q(in10[63]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_cd_reg[3] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(data_word[3]),
        .Q(in10[35]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_cd_reg[4] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(data_word[4]),
        .Q(in10[36]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_cd_reg[5] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(data_word[5]),
        .Q(in10[37]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_cd_reg[6] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(data_word[6]),
        .Q(in10[38]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_cd_reg[7] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(data_word[7]),
        .Q(in10[39]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_cd_reg[8] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(data_word[8]),
        .Q(in10[40]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_poff_cd_reg[9] 
       (.C(clk),
        .CE(out_pinc_ab),
        .D(data_word[9]),
        .Q(in10[41]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0800)) 
    \pinc_ab_r[31]_i_1 
       (.I0(strobe[0]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(strobe[1]),
        .I3(\pinc_ab_r[31]_i_2_n_0 ),
        .O(pinc_ab_r_0));
  LUT6 #(
    .INIT(64'h00000000BEFFFFBE)) 
    \pinc_ab_r[31]_i_2 
       (.I0(strobe_prev[2]),
        .I1(strobe[1]),
        .I2(strobe_prev[1]),
        .I3(strobe[0]),
        .I4(strobe_prev[0]),
        .I5(strobe[2]),
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
  LUT3 #(
    .INIT(8'h80)) 
    \pinc_cd_r[31]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(strobe[0]),
        .I2(\poff_ab_r[31]_i_2_n_0 ),
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
  LUT3 #(
    .INIT(8'h40)) 
    \poff_ab_r[31]_i_1 
       (.I0(strobe[0]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(\poff_ab_r[31]_i_2_n_0 ),
        .O(poff_ab_r_2));
  LUT6 #(
    .INIT(64'h5555145500000000)) 
    \poff_ab_r[31]_i_2 
       (.I0(strobe[2]),
        .I1(strobe_prev[0]),
        .I2(strobe[0]),
        .I3(strobe_prev[1]),
        .I4(strobe_prev[2]),
        .I5(strobe[1]),
        .O(\poff_ab_r[31]_i_2_n_0 ));
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
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h45B0)) 
    \reset_cnt[0]_i_1 
       (.I0(out_pinc_ab),
        .I1(\reset_cnt_reg_n_0_[1] ),
        .I2(\FSM_onehot_state_reg_n_0_[4] ),
        .I3(\reset_cnt_reg_n_0_[0] ),
        .O(\reset_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7A30)) 
    \reset_cnt[1]_i_1 
       (.I0(\reset_cnt_reg_n_0_[0] ),
        .I1(out_pinc_ab),
        .I2(\reset_cnt_reg_n_0_[1] ),
        .I3(\FSM_onehot_state_reg_n_0_[4] ),
        .O(\reset_cnt[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reset_cnt_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\reset_cnt[0]_i_1_n_0 ),
        .Q(\reset_cnt_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reset_cnt_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\reset_cnt[1]_i_1_n_0 ),
        .Q(\reset_cnt_reg_n_0_[1] ),
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
       (.I0(in10[0]),
        .I1(tlast),
        .I2(in9[0]),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .O(tdata[0]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[10]_INST_0 
       (.I0(in10[10]),
        .I1(tlast),
        .I2(in9[10]),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .O(tdata[10]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[11]_INST_0 
       (.I0(in10[11]),
        .I1(tlast),
        .I2(in9[11]),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .O(tdata[11]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[12]_INST_0 
       (.I0(in10[12]),
        .I1(tlast),
        .I2(in9[12]),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .O(tdata[12]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[13]_INST_0 
       (.I0(in10[13]),
        .I1(tlast),
        .I2(in9[13]),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .O(tdata[13]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[14]_INST_0 
       (.I0(in10[14]),
        .I1(tlast),
        .I2(in9[14]),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .O(tdata[14]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[15]_INST_0 
       (.I0(in10[15]),
        .I1(tlast),
        .I2(in9[15]),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .O(tdata[15]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[16]_INST_0 
       (.I0(in10[16]),
        .I1(tlast),
        .I2(in9[16]),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .O(tdata[16]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[17]_INST_0 
       (.I0(in10[17]),
        .I1(tlast),
        .I2(in9[17]),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .O(tdata[17]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[18]_INST_0 
       (.I0(in10[18]),
        .I1(tlast),
        .I2(in9[18]),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .O(tdata[18]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[19]_INST_0 
       (.I0(in10[19]),
        .I1(tlast),
        .I2(in9[19]),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .O(tdata[19]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[1]_INST_0 
       (.I0(in10[1]),
        .I1(tlast),
        .I2(in9[1]),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .O(tdata[1]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[20]_INST_0 
       (.I0(in10[20]),
        .I1(tlast),
        .I2(in9[20]),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .O(tdata[20]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[21]_INST_0 
       (.I0(in10[21]),
        .I1(tlast),
        .I2(in9[21]),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .O(tdata[21]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[22]_INST_0 
       (.I0(in10[22]),
        .I1(tlast),
        .I2(in9[22]),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .O(tdata[22]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[23]_INST_0 
       (.I0(in10[23]),
        .I1(tlast),
        .I2(in9[23]),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .O(tdata[23]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[24]_INST_0 
       (.I0(in10[24]),
        .I1(tlast),
        .I2(in9[24]),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .O(tdata[24]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[25]_INST_0 
       (.I0(in10[25]),
        .I1(tlast),
        .I2(in9[25]),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .O(tdata[25]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[26]_INST_0 
       (.I0(in10[26]),
        .I1(tlast),
        .I2(in9[26]),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .O(tdata[26]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[27]_INST_0 
       (.I0(in10[27]),
        .I1(tlast),
        .I2(in9[27]),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .O(tdata[27]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[28]_INST_0 
       (.I0(in10[28]),
        .I1(tlast),
        .I2(in9[28]),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .O(tdata[28]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[29]_INST_0 
       (.I0(in10[29]),
        .I1(tlast),
        .I2(in9[29]),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .O(tdata[29]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[2]_INST_0 
       (.I0(in10[2]),
        .I1(tlast),
        .I2(in9[2]),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .O(tdata[2]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[30]_INST_0 
       (.I0(in10[30]),
        .I1(tlast),
        .I2(in9[30]),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .O(tdata[30]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[31]_INST_0 
       (.I0(in10[31]),
        .I1(tlast),
        .I2(in9[31]),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .O(tdata[31]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[32]_INST_0 
       (.I0(in10[32]),
        .I1(tlast),
        .I2(in9[32]),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .O(tdata[32]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[33]_INST_0 
       (.I0(in10[33]),
        .I1(tlast),
        .I2(in9[33]),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .O(tdata[33]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[34]_INST_0 
       (.I0(in10[34]),
        .I1(tlast),
        .I2(in9[34]),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .O(tdata[34]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[35]_INST_0 
       (.I0(in10[35]),
        .I1(tlast),
        .I2(in9[35]),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .O(tdata[35]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[36]_INST_0 
       (.I0(in10[36]),
        .I1(tlast),
        .I2(in9[36]),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .O(tdata[36]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[37]_INST_0 
       (.I0(in10[37]),
        .I1(tlast),
        .I2(in9[37]),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .O(tdata[37]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[38]_INST_0 
       (.I0(in10[38]),
        .I1(tlast),
        .I2(in9[38]),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .O(tdata[38]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[39]_INST_0 
       (.I0(in10[39]),
        .I1(tlast),
        .I2(in9[39]),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .O(tdata[39]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[3]_INST_0 
       (.I0(in10[3]),
        .I1(tlast),
        .I2(in9[3]),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .O(tdata[3]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[40]_INST_0 
       (.I0(in10[40]),
        .I1(tlast),
        .I2(in9[40]),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .O(tdata[40]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[41]_INST_0 
       (.I0(in10[41]),
        .I1(tlast),
        .I2(in9[41]),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .O(tdata[41]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[42]_INST_0 
       (.I0(in10[42]),
        .I1(tlast),
        .I2(in9[42]),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .O(tdata[42]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[43]_INST_0 
       (.I0(in10[43]),
        .I1(tlast),
        .I2(in9[43]),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .O(tdata[43]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[44]_INST_0 
       (.I0(in10[44]),
        .I1(tlast),
        .I2(in9[44]),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .O(tdata[44]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[45]_INST_0 
       (.I0(in10[45]),
        .I1(tlast),
        .I2(in9[45]),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .O(tdata[45]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[46]_INST_0 
       (.I0(in10[46]),
        .I1(tlast),
        .I2(in9[46]),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .O(tdata[46]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[47]_INST_0 
       (.I0(in10[47]),
        .I1(tlast),
        .I2(in9[47]),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .O(tdata[47]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[48]_INST_0 
       (.I0(in10[48]),
        .I1(tlast),
        .I2(in9[48]),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .O(tdata[48]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[49]_INST_0 
       (.I0(in10[49]),
        .I1(tlast),
        .I2(in9[49]),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .O(tdata[49]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[4]_INST_0 
       (.I0(in10[4]),
        .I1(tlast),
        .I2(in9[4]),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .O(tdata[4]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[50]_INST_0 
       (.I0(in10[50]),
        .I1(tlast),
        .I2(in9[50]),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .O(tdata[50]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[51]_INST_0 
       (.I0(in10[51]),
        .I1(tlast),
        .I2(in9[51]),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .O(tdata[51]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[52]_INST_0 
       (.I0(in10[52]),
        .I1(tlast),
        .I2(in9[52]),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .O(tdata[52]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[53]_INST_0 
       (.I0(in10[53]),
        .I1(tlast),
        .I2(in9[53]),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .O(tdata[53]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[54]_INST_0 
       (.I0(in10[54]),
        .I1(tlast),
        .I2(in9[54]),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .O(tdata[54]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[55]_INST_0 
       (.I0(in10[55]),
        .I1(tlast),
        .I2(in9[55]),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .O(tdata[55]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[56]_INST_0 
       (.I0(in10[56]),
        .I1(tlast),
        .I2(in9[56]),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .O(tdata[56]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[57]_INST_0 
       (.I0(in10[57]),
        .I1(tlast),
        .I2(in9[57]),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .O(tdata[57]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[58]_INST_0 
       (.I0(in10[58]),
        .I1(tlast),
        .I2(in9[58]),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .O(tdata[58]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[59]_INST_0 
       (.I0(in10[59]),
        .I1(tlast),
        .I2(in9[59]),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .O(tdata[59]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[5]_INST_0 
       (.I0(in10[5]),
        .I1(tlast),
        .I2(in9[5]),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .O(tdata[5]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[60]_INST_0 
       (.I0(in10[60]),
        .I1(tlast),
        .I2(in9[60]),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .O(tdata[60]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[61]_INST_0 
       (.I0(in10[61]),
        .I1(tlast),
        .I2(in9[61]),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .O(tdata[61]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[62]_INST_0 
       (.I0(in10[62]),
        .I1(tlast),
        .I2(in9[62]),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .O(tdata[62]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[63]_INST_0 
       (.I0(in10[63]),
        .I1(tlast),
        .I2(in9[63]),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .O(tdata[63]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[6]_INST_0 
       (.I0(in10[6]),
        .I1(tlast),
        .I2(in9[6]),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .O(tdata[6]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[7]_INST_0 
       (.I0(in10[7]),
        .I1(tlast),
        .I2(in9[7]),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .O(tdata[7]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[8]_INST_0 
       (.I0(in10[8]),
        .I1(tlast),
        .I2(in9[8]),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .O(tdata[8]));
  LUT4 #(
    .INIT(16'hF888)) 
    \tdata[9]_INST_0 
       (.I0(in10[9]),
        .I1(tlast),
        .I2(in9[9]),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .O(tdata[9]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    tvalid_INST_0
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
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
