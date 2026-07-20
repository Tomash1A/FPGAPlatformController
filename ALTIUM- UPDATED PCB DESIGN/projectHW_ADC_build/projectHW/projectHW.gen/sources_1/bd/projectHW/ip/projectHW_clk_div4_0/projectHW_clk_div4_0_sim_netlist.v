// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Mon Jun 29 15:43:07 2026
// Host        : CS-RO-PC29 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/shtomer/WIS_work/WIP/build_Test/projectHW_ADC_build/projectHW/projectHW.gen/sources_1/bd/projectHW/ip/projectHW_clk_div4_0/projectHW_clk_div4_0_sim_netlist.v
// Design      : projectHW_clk_div4_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "projectHW_clk_div4_0,c_counter_binary_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_14,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module projectHW_clk_div4_0
   (CLK,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN projectHW_FPGA_CLK_BUF_0_IBUF_OUT, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 4} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} DATA_WIDTH 4}" *) output [3:0]Q;

  wire CLK;
  wire [3:0]Q;
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
  (* C_WIDTH = "4" *) 
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
  projectHW_clk_div4_0_c_counter_binary_v12_0_14 U0
       (.CE(1'b1),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0}),
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
g1HEq2u8tKvVLxfSgJVzptXC1k+xDZszLsF335rO6eJhiFvjwMSIso+egBG3rkofM1lFfydxgaCZ
a4zX/obk53pdb3gxU03BqA+lAMzWYObm2coxWr+7drQDQAYiqRzqt9ikFYXFQbZ9gy/JEvN6xSpJ
zW/DyDB+zdIF0rXdErIJ0uaxSBFvn38oel+6GeGYOiLwrIsq/KTUkA7PTc9IpksgYzro1PPv+Vzn
DG2UcjVsNW46J7oRxwp1CKhHxtbL2BNWBgpHStiXU5TxDhO/JYH0jyPneEDJpcF56K9EDrTYcNgp
M2j0quCKiUclj4EDeGcuMlMCQem+KAUVTU+1LQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
J0PRqO34rw9fS4qm64O+XlIpHY4NTXbZVvp9IUoR8zHRJHIwbKUxunI2uqVP0AMhKIpe+SAPjMAY
ZJtGcvjVCQNZrTvGKIEXmNMdvRzdlij2a+Z/v0WhAhDtUaLbm9iQxUDJb4J+eYu3RGwU2Ds0X3Ox
7dZlr8EdF/JhB/qjanSUfAYq/wCeM5gl0NV3EoL3lMoC7gkGInynjQ5OjYoxE/2cLVtPFRG0OYUQ
d/Cl7YwuIE8IxdXhsHONudWEjerL1SRNb2pLXEcj9NiSSErRzFXXvR4dFvfMj3iwyUXKoq3PnVit
P0vswMAVbzl3GpPeZB8I89IqG7jRgKk2t84DVw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7120)
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
