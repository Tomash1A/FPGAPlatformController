// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Mon Jun 29 11:25:08 2026
// Host        : CS-RO-PC29 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ projectHW_clk_div2_0_sim_netlist.v
// Design      : projectHW_clk_div2_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "projectHW_clk_div2_0,c_counter_binary_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_14,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (CLK,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN projectHW_FPGA_CLK_BUF_0_IBUF_OUT, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 2} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} DATA_WIDTH 2}" *) output [1:0]Q;

  wire CLK;
  wire [1:0]Q;
  wire NLW_U0_THRESH0_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "2" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_14 U0
       (.CE(1'b1),
        .CLK(CLK),
        .L({1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_U0_THRESH0_UNCONNECTED),
        .UP(1'b1));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2021.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
GTqSEFfdw74AxDk1xtNQd2f6GHWzPN2yfLbDluzXTaZpl4W+sEd4lTW79qJytbO6Id+EKMIQA/Rd
JoOZOfWlzssuRG26ui4Pta5Y3JPgDAy22thMZez0bbLCexUp/MGwpsqeiAH6fB25CKwqaY0ZeWU5
zVSIuMCwrJjkXNKwtns=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Zg7QdpS0h5qvdN8jDF6+Uy7LIqhoofwxBC4VSN6My9UgXglQ2uXgzJ3C3R8F1pgtGLa4D+ow2y/Y
AYpFHE8foILr6fC+wuHZ1AVOCIwn3jyrqkyC5GdfavPR782wRbs37sC/s2HdBL9KBYEYx/5Jns/o
UYIX6hvN50LZfVhiFW7hgfl90zqrt0dD0p5PPQIo+CjylU1iskxRQklRTt4e8CiQG4CDFV4P8lOl
A8j9h1MbVgW67VZNE2bmg8yVzCpLZWRMG/YJVq4c5A6ijn++/Skhq8nBHcw/pDZM2cPEt5tIjCsi
RX7+h5VqjxnJIDLE8NjzHmZqaYqo0f46F0d8yA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
sraMSTIusw2vW8x6E/6NjBaBni1BYS47l8DJ4rLdHpjUsGIjJyCpbYaL5fGuk9CxeqtrDOjYVAi7
90gKBWdO9PFhDW1ioDW5KOAL0Vn4jIu47pX4jDV4qeNvNk1diz69p4CFg1STDlAXZzrSuxsj72WP
87dmE4nl3SabfGRMBlo=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DR1bpsHn3evUQJqCy4fwFjV86IgidayNbMB9OsXIxw3etzwha87Cnp5nA00lGLG4fZ8pZJyrI6L/
fRkMyndVySdfcAKVuezHlGOupplByaJ1+yCRdSsxFWClOxzxu14UG4YKPeaiNLetLoWeelB5Tnqq
1hYi/BGV/rThTOY71pF8la+OJtDpWMFLfoXJoOTVCegrm5gqKtFY6w/8XsbGVdyg3iSIqj8qCkwB
BZ3YsrUv1TDfRwq1TYRCI1n8zXr53wvSW/5PP77E4inmNHCXCVXnOKsizHIZJAkA2UmS1vzkurzr
VEW+C/svU60NnxjcTMNcwEEDircH1H9DE6aBOA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mOBk7oA7/Fcn9XTT8ZhbYFKmYzC49P630wnSr28owJKgc5uh27BumG9Lb7w3/r45RWv2mmSUb6eo
4mxciLVWSDIdLhjlTf7LOhgrJMOQXh5LGfsh9zwms2iOvCnCe0hfP9CL4UIgLUV2jp5cxrFr9uAh
yJgNcg2fWFX83mbc16nw5NIp0rSQlbrOKf65j+6+CDDgfV9oxBoALy3cgRDvV7+fgxQgopIKdFoK
b45HIQkxV/IjqDH03Avy68Ukar+0zNvwBgy+ehioNpAXVylHbDXnHQp4PrgZSO+OktFUy+3UBAwI
dJq7YaBh/R/fv/SlpxdK/xa4Qvtzq9l/9JB4GQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_01", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
bCy2E+cIonplnhEbZmGvC1heHQ60MGwVmU2x15ENdnJuhBjqhnJc/OjcmXCnsQ0PVFLIlQ/0wpvC
IqfKU1GFE+M+qT4h4wnc/x1JQXagKtMY5JeKKAYfWs8npp6CsE1Cg65poSjyPQsgppvcKCQkY5IZ
90pVE9LqdAo5VyBUFrKhK+FCFJMU+3N2xsv05aL9/AGTNG+GXNZ7CkLFnRb50dABLQ4Ku2BMSRvn
+UuVYirvcztxNT1gNuOrcoLmom1iYxT/TCqIeQROkp5HGgunWatU6fYC+ht+UFU9ygjggNSGfAnd
nCf+NSTYx33GxKIYVtgmZXwyP5cI8Lk/NmSxwA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
TmV0I8CXrLN6NcEG9hNmTThTTkBIattb9yt7bm+0yRK6TSd3xiYqQWx5SXI3IMOAAqoYeCKDQiZi
cDQjcnh57glJKKvIBsctOLK/D2Kxyx3ml4Bjudc5vHfUEcBa5y/gEA0EWGBeWkllUdY84GtJEUsS
AuoWUgMw5h5ipQAj5iVYp95KGgk8eW8+W7GSh8cLYOV/kSvykcQxSrHFcgdJFnmCjN2aBEVI+6Rq
fnZfZDbZGAJB6fq14VDxtFeZczuf+wg4xmxBX+Eh2/eWWs22Kj7qYMcbKvAFaRq5iGeydCuQBnIu
ea3TVf+OoBqLQ94kHgaoWr2qD25EKHXRIXHKzQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
Qes+skSjlfcngFHqOonb/14mf4z1xOJPJsFQklrcQMwgfeYnzbXPyi+VjQno7oMepbwl3h4WW5qp
aNXYP/ZpN4wr42OVgYVRglpc1gbAeMcellSFa1b3aa0p0MTVbZLuSRBHvAHGATaSH+IryuDZhdQK
2ph4EVLTnZlFXUBQTpyMiG7KQBeQ0fae3hCn5gCL5DSdxeRA3jjvxvbhmrKdOJ62//GfreJsyaWw
nYXtlk7UFCVSSNpAlj6KeazG3ySpvsPARbSw7rVBZlwuxyyVaNShIrT4xyocuG+decy0RByiaxY3
VVhRV6XM/SqfxlhSmSAQ5c9iR+Z7Of4EW3OPW3xuRiFX3j2RMmv7RZJ+grM24tWBNfD7vubT/uYx
LHeqF03tFF/s6jlupPE6Ss6Jdt/rNxPq1rM10viJa0v0aNFc/a7FhHHO9CmpZ3V18zUmudbd6mIi
itL0+u9Q5BeihF1Yk/zHxWnMDZ9bzZzebHRLl4tGiWOJMHyTnvLtg/uj

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fT9P0busnHFhNtVhuf1ATqDeNMlqjQwbhvf0x34wZd35mjARDv55SXpRz+pBacoaxyo8g70Zt6by
jhGGO95tzsD9Cq8TIfsQ2B4hmI5lT4QzHGYby6xuklbwvPhpcpNgdDV9apT+gdvPWZnNk+R5awyV
uNxQNzyZblMxkJinicsdHysCQjzYlps9O1mEE9ZZTZ6WH4+e+k1mrmPmUBBazuWMZ2/cw7t9XbZT
/zm9meBtxtVaA35lu3qeM0Of8DV+54hnAG4sYgN9RRwmHgxE//V5fc/cyV6/fVWSrBIACq6lNplr
Gs0JTuAQrPaxxhx39ruQXEKIuc1vtVdzAuNhSw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
NlQhxmc0Mk6jDyCO49NwksiIgxvy15Co2gWeJrO6GhcHgiZAXQh648YiUJuv0tWRk+mDQn1+G3j/
zU5l+NpGzjcG/qnP10OxLTOjapsljYsw3mTNL+87tumMv6w8i8YkoteY8pYA6W8VSBV4YDgv0nCW
NKPsdrttWBBHD9A/MXLmWojnqcnhQtJ0tYVyM/OStw8gh0N2sefXpddY/eGL2bK5dP78WjfDK9iB
kORiWR7VwWl+p8v0JoyVxCCldYQKGqron21BHVLF0DxwlVxH4nZAiIdyeu7Zg5T3dhzCtIZzNpxr
UH7yb8DFV/GVzJl9a67VFFeJ+pQfCunCtDdMVQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kw1pV1C1n5v3DCnmEnI+swHp8xnr9rM8Ndu+Rf8jgHUne+hceR17euWhZhFCvouUoI3if0A7YZ32
bD8imci4PhjQAW2B74tqo1bP2Ym0DYx4Fu8q92/hV8Cx9degO1JasYTGl5ViaWlVGW7hXyk7wCGo
5uewMBRpNWxh4OAL4wOYRJPKqcjwtXO4x7UNwXXSPejLPCsvWuI65GdZa0XTcft4nmr69+Y+s/i2
9nb6nMH+qTy4ePWjHWGOfbJ04YeypIMH3KYbHUekIu27f9b3//wGqZdj3pneYUnP36ofUGHsSE0J
U0wG3HaJTBFkzzheNo/vcvb8DcZQ1Vg1/uOAvQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 6528)
`pragma protect data_block
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
`pragma protect end_protected
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
