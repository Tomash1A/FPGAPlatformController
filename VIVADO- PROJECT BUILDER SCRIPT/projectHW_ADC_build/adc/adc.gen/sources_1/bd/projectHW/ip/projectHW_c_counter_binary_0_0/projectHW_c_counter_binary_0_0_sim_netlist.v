// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Mon Jun 29 12:03:31 2026
// Host        : CS-RO-PC29 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/shtomer/WIS_work/WIP/build_Test/projectHW_ADC_build/adc/adc.gen/sources_1/bd/projectHW/ip/projectHW_c_counter_binary_0_0/projectHW_c_counter_binary_0_0_sim_netlist.v
// Design      : projectHW_c_counter_binary_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "projectHW_c_counter_binary_0_0,c_counter_binary_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_14,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module projectHW_c_counter_binary_0_0
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
  projectHW_c_counter_binary_0_0_c_counter_binary_v12_0_14 U0
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
EGYKIZIuWnm97iUvkGNaVPEcvBNfmyCJlXKQWqNVmYhWdMmVyjLu4BFVyfeLeXL8+ptXpFw0siP8
KfqLVw4z5pKVYZQD7+e+bIzkVZaHRWZ+MWwkW4QvAexdGC/ykftig7UFh5Mb5MU5PSS3otW3BEF3
FGdMubA1ln2yIargCaJ3VzZ2Yi/sldqVgaBXP4xS7CM0Sdxy/RzswVXnApHYTbTa+mGouUrwtiW2
eMSkrS2atrM+Yh34h9HDk/OJBhGG9s3ge3hKu50Qql7U6/npKVV28pXzl6n2A25gDuCwZp7NCUE+
Q1w2MUxbRsSG5z13RxkfTVeswHDG714d6ZmIjg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YpeMsZk5O3EKVdMXZchupDgrm9kCBfu3MEP8oIzx/SPsxPm8V9pCTRCqO8dv/C3UXTOv1GuZTfUH
GSpP2wU0S2zE8esLKHOqYnoOHWhCpvdoovG+YZfcH2s5uJqq1QyIzva7LkOcsX92l+klZPtyxArG
EBE1pytzf2s1OjhO5BIjO3b011ob/30CkdpJhxb2ZM14iHuLdLDdGnBQQgidWFcm0Xdd7La60ALX
RBjPkb/rD6OgZdxT5Q4RcnDoQipYXjPOzKveFehnQFvNW7vPA+ad/kayAbWQUgXYm7Cj65wPATKy
vqc7ry0iW4TSGm/mGAIGxk8UGqWvFLQU15F+3g==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 6752)
`pragma protect data_block
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
zbpn1+MG+MIoVdNX2Efse0xuYNuCVVyN9jE=
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
