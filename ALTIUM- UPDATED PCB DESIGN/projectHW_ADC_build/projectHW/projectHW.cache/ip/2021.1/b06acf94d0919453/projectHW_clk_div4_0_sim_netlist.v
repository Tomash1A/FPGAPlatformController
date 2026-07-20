// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Mon Jun 29 15:43:06 2026
// Host        : CS-RO-PC29 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ projectHW_clk_div4_0_sim_netlist.v
// Design      : projectHW_clk_div4_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "projectHW_clk_div4_0,c_counter_binary_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_14,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_14 U0
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
CA01iNYXPpCg2GM9LWE+86AI9qSiyR6Otdb8kCVmp7VvJy835ct5NN94kX9MWUF+aSc2OPy4tTG+
yf64p3PtNFwvsT4meh0YJoe4XcdrnpwwTwIwOu93F1KMeSPjyowSUgXmw+TnM1GfwUSOuetpWs6O
aO23sheI+/0/7K/RKrugjpD3Y87S9mNevgGFOZhpNwWploG4i9pfRwaRW1Vm7AITZ6nusJiznnEm
Eol/+0uWV5Y315eHIWQQciyl3IqGwhaoOYbycj2QXnP7CjN0cjSppHzoW0jhSQjSypPH10xZoXmG
f18VpsU3fRozylElsLK6hH8YpPc+cBMSQOVQ3w==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kqqIZM/09Mdjf5D8h3Ho+l04DRx7KodQ925aCV/6KkW/Z7AIqC5Af9cO30gsuWuNQ5LEKMJzCezM
Mp+dH4EjaGVmrYjwSmhPQtcbkeZBOUcVtpnsBzUTU3rIGD7kVlHT1awageF1Z0AYgXstTdBc9iWp
ikQLlYhzuwOr2Br3u29wnD6nNHquQBVtcu46cGodTm4mjOjVOqMBS/vYB2nni/rHnvH7PPve26fY
QYmI3Yj6IFMgJOpWF52QrHZe/3xip12d/BJWFp6goTGimLAKm2XZqb2+pJuFX/9eo6ClMp1EP2dA
LKI5GfiVMxDOiWDZOMmd5/2AUESV2S3Bflos3Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7024)
`pragma protect data_block
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
LudH4bUnV/EnQwWQqg==
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
