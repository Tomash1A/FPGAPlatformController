// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Mon Jun 29 12:03:31 2026
// Host        : CS-RO-PC29 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ projectHW_c_counter_binary_0_0_sim_netlist.v
// Design      : projectHW_c_counter_binary_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "projectHW_c_counter_binary_0_0,c_counter_binary_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_14,Vivado 2021.1" *) 
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
TUEiH3Sd5YIrq5qptNqfqtBy2ZnPhg8CXRUgnVEB388SRHYaMPjnM8LRbeIe17TvlBqQ3Auh0nZa
zmLSS/Wwllkp/VSNG50qCb8npA0IkXySwuX7xpRY3d6d9vnxvJmjHhE+BoIwByhsKyCpgA2xRcDZ
jvcGZzj6CVYhCsN/EPsla2lNrzhoaiycCIR+Wi6D4jjzVSCYvN2YEJaWlzT9Ujt62Evh0RZWox18
xBnw5YiSychFZKdHZ4oqAJPo321ZWrz55rQs5LZJmqdwmSU/hI1Y+KIGvl4L0km5Z79OttnLnH7L
LkX4BVO/yZN2j8bb66e0OXlLdQlqdD4U+7O2TA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
6aUUBLixaXDjiAUnVt8kzxXLHflLVJfCfmv61GsK6hD3AI74vaBHyWHyqUpdpMcpVVdGtKFAT9y/
CArgPcTAIvJ0r/A5w6DGtHV+WmS+22U+oPf6NnIHIRpZEv9N6WdRLxaHMcrUJIG0lqldB7ST96L/
QAF4L2jr+IJZMEcSMrEuuofRPHN+ZAfj8Uv+flmlTLqZbPD+5fPUyL5rkvMMttuJ0StpRKDIBNHN
k0f29pTMHAc7ueBken4rVi5+q96Ukk/kMiZbmah78Mf69X2wKgGsfSy7yhrEVcZv+LdvKfEOUD1a
71rKL84yLZ7jS6p3dxR2PUCEaWyPfBc7R+bUBQ==

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
