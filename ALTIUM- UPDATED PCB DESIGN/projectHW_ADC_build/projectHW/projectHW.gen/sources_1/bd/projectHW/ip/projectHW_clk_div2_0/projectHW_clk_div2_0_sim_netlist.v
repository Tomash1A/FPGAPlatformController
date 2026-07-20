// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Mon Jun 29 11:25:09 2026
// Host        : CS-RO-PC29 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/shtomer/WIS_work/WIP/build_Test/projectHW_ADC_build/projectHW/projectHW.gen/sources_1/bd/projectHW/ip/projectHW_clk_div2_0/projectHW_clk_div2_0_sim_netlist.v
// Design      : projectHW_clk_div2_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "projectHW_clk_div2_0,c_counter_binary_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_14,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module projectHW_clk_div2_0
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
  projectHW_clk_div2_0_c_counter_binary_v12_0_14 U0
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
RtaeIHlTGmDgSy/MXRt7Ls2NBhw8BJdSUEmaqhPKD+Cf11dsMUW6H3/1nc1FGQ1Mf5o1/MtlOZrB
wmmGeD7s7w8qXHATpODPE182QBvu3D/EIYem2QtNRnWc1NG1wcvMrO+mx9f0riGr4VB+tRwazbMJ
P/i1g88hhPr2C7meZPPKFxHjBI9hGT3DqUlF6aOhcN53kObdh0/MJmXJWTZwHU5ZLeh7/+gqfJ5n
nzdMeUbK3ZvyC3a8Z1Q+jatGZECXGzdluiZ0quQosNHtAx3/S6kK2S4GU9CCzGZY/cnJoTAlZOaj
+QjPvqU74AvSUlHK5gkRBr/MMcyWnJQLfaV0Tg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Y9LZzNqygRO8/12iYazyVFAyRYlkonAzT41hAYqu2SzmPUXlthtrBIwtvEmDBIv/yEd4HNxBQibf
p8n6tMc+Au3DWOrZOAUM6airDN+1D271wwPox1ASM9ASIc9LEOg/re7ApwlpiydA9YnyrN9qs5jx
SlYC1bCXbCikO2/a3F8JVVOmG2fTGt3z0q/5PobFZevn+833vI+DrhD19PGL2GC8zS5kY1gyNEhS
fEdg/DVLajeWTdf9XQJwJ5+cqQnQb3wpN0pPtK7V40NrkyULRL7dqHMn5RHReN50V8/CJUp1WlRd
mfb7tBHfOMuzfqjSd47WgNb7MY4XqDiCwI1NVg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 6624)
`pragma protect data_block
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
BxzBzPnFD8x53711
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
