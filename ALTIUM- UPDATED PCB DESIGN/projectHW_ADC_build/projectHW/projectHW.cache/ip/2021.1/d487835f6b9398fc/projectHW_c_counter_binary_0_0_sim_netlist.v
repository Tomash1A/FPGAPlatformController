// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Thu Jun 25 12:13:35 2026
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
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} DATA_WIDTH 1}" *) output [0:0]Q;

  wire CLK;
  wire [0:0]Q;
  wire NLW_U0_THRESH0_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_COUNT_BY = "1" *) 
  (* C_COUNT_MODE = "0" *) 
  (* C_COUNT_TO = "1" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_LOAD = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_HAS_THRESH0 = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_LOAD_LOW = "0" *) 
  (* C_RESTRICT_COUNT = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_THRESH0_VALUE = "1" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "1" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_14 U0
       (.CE(1'b1),
        .CLK(CLK),
        .L(1'b0),
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
DNctsnwbGjtYYo1zh/kKu5KpsJW5zhiFJ7SXatIN4oQJXBSlR24/wMBTh9hTk32zje/9Z9XCbHmA
NUZnAiWFDuM5MGP/QpAFOzNqvlcYm3Ig7Xrpz1VsnWjmPZDHrtsKXomygD+CUJJGrln/oxDRqc+t
SvxqQejvqhbZA3g063U=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kW++D48U4Xr1dzPKZjkILHSeVWudxlc0+Is1mkbxJ6pGXMGHJx9SUpcA/XkHXRrL9g177f5p/vuA
jGKpiM7nmjaDrnEhHaVxhZVVh8wgR8SW9pQCwQDYOnO4QVHdHq3wXUuj6za+8DnQIGoxWvFyjioa
C/88ALZv69yqcf9rRRn9Wv5l0w9LsEmPqro4TRQph9ZyjhiQ/+xT0jk0YJxaBPTsF1MlDZX0jD9t
NCUm3ECqx/SsNo0KW6r7tJh5E/gktKNcc50Bj9OJcxZD8duvfbgK4/n5jJzBBOcZUEPLV7yjHeC4
PoJ+5FsAYTyd7pLKJzXfCFUTlVzTBsj4cj8cLw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
qcxgGG0/vLZJc3+21s3QPCdysQlUHAn47ZNKDdbDRZ/81gBzczL1nimBc7AewaKp346dnBXzeAyr
zlP4Pr5z7WWtyKLy4IeS/79KC9hBxlLhtma2N+7Uc+mqelWUltZYCQkkihRjJW2kKa3wRGI/UGDz
99k45BcSS1vW0XCcuTI=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DK8HrCt2KAa93N5G0bqVKGAwx9TZZ3QrMLcDEZ2zrtmp33z2BvNd3K+yxIGDiMOyMdeiPSRDcpZb
65hMY0wQZQj7t+FIM+6ox9mJLaZdpcnlVy+JEMtn3QyBycADP7JDiiAsamrMuHq+BZzFcoY1lH7G
3I4VutVSBq/zmbHC6Uu9nPFZ8hTzntC1d4kVl/q5FicKl83xvBFYN9yLsBv8jbWMaEZ6bYWf+87a
CNDtc2Vw7MbbR26qVhl9TAtVbVTLOJhpoyjsD0mJxrv4aLMSKZOpzYXpLj6tBDxMdJOXsmdeRhMd
Gud4UR4Sqc8bcrljCv2tYIiFY+/t5xx2sGTP5A==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XQvg9GGj+5MHDWqjsoW0ixNlUGGh6nEvjEkBV355L/FgqEF03/Vdq21wAKhjx7qOBNH5Fc2ySY+V
XK7t+FhigVf6ZGIymUYR+qFx+dN4dfMLJIgdMG1Jkn38tl+4CIYBlNU47Il9u7j8vTIv8bJutCrF
TlSWRbU3wtzS8WNFI0xalvTeSRbjWPA8P2Uck+6L9CBbsyg3EalnaczQ4tVB6KEMMLJoJotet/VG
Tc9jTRkpQddQFIVOzRjt6QwHHya0Rl80R65MYGTHngAmG55cGlrOL80sp1H/O7Qv8RtaPyky2TdJ
/1SbYDrfLEjQOscG3o79l5RLH0FuvOvpUQsgew==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_01", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
SmzsfSvQn5CYXRGJLKCWdHephGTitMoj9w1u/535H9CoqEglQz/9Sf+X72egyEiJ3gILrmRVXWnU
Ta0RAi/WNl6TgvIbEZan+WalTYMtE1LPrSjy6blZEAU24kLnfZF/UuigmivLxITtwuABz+2Whnuv
Uyqk10nx8DbmyfBlrSsCyEOGhMMWEfE/B99k8vBm6B+Qltodna1m98iXUUcUJPiZ1t0UeqMYN+pC
M2ikfOvRpo2nX2RlmQgU/l1wWm/KNgvRuMKOPvzKrzm2iG5C3cTflIIQ9s0Zkmax89Tw31u4Yo2H
8iYruT5pzjGMNZiKL+R2gKeveDiS0p8IRQePkQ==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
jsD+TGkT0KfiC56wju9sliAxrL/dTNXXlh+20BKfm2728jnCoxnNf7PcyVgXjVE5QWCQgNB0ibyq
rrmRTPbKC0usTSqlsTnsSyWJzRH4Id9Tg2cVud0P7s8TJRpIk2vsj4nyJYWwqKv1WGjSynwCcuhc
5Dg0Y358CRV2jVnEnDRe4k+mnQc9GZMa06p7PnA0mO7Jde0vBedCxLDYja5lMNBcYzjYut7ZouTy
Hxozc6rL9W/e4CaiLhQIBfjb4t1k2RAkicKdiGojD0XC1vKAgclQEHHMCoHOAyv+m5GytxDO3Q0I
MBVfOzlVZ32InSpV/y1ScirWJi6H2/czCGV45A==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
DXLBPliMusuyW5Mf7LP/qcOsfS0S+SvkLlX6SYelgLmLT6IVCwu7ujNIBwrQ3mDOd+H856d2oO/V
85q84exUb1EZ1AnvRe9RHKioRXUEbkP1SuY8c3xiX83VYHpnT6DBME8WQuZL/Wstb5GaRIrzPshB
hPiF7uiKQPVyB8qM0rcrHAgqw54Z/JjDWlMZ4+IrH/zrL7aQp6Tr2MpiNWh/ZRLkihzSZiJcL2ao
eT4TisNVnenxFYs6ULkZTp2B/4kFgoBf30IlJMvn/tI3hKjYIymuthWKivpXwk3zUvhi/snakZDk
S3kgSbWPlucAwPh7KEMH2GUJNLfiGEicbcyoCBssGMcNBpqHR+zii7uJfpfDDo9RDv93LkRlhr1R
Vi3HtY5tDRKFSojuwYrjskl9C0GCls0ewJpvjfWSzWYXcSK+h6LmCi2r59hjZNTdrdXD2c5xdnah
TIPeoNdvLSSJLHlv7n8ZRll81IXNsgsFIzPyVugt7QWfaklmGeSnCqX6

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
f4ZE6Z+VJOVetjXIqQXyYnRpmLz/AI94rBtEVlLY1WW4yK/WiB3Ef8UX3K+1t4bvtjDaACP+q3dP
/06PSZG4ZlNmk9dSZ4fgF5NcPdl86pB0rSv/uehvZsFak/vEi1pw9Aa6MJRLHnGrGQ4KDSeuINm2
nLFzO7FvQH2io9uaRwSQhU9nRC8vceSBeM6cHlfETtKOqf28Ryr7Xs91PN5Mk0NJ+D7vIFt1deX5
8NQ+Xsr4gzsgX7j3aQQ1599bJ95lIF0+Vn8c4eesMIwf2TYEniNANKfHLjvJwUtNwJSddrWsn6zh
WJL+wK0VFHMq4XXFmg92eAn+Qhk1j/feYj302A==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
biS9AI08eiBzGFNQ3C4GMGCJci++5sPh1PVHNk1vwl9Bl1yzu/bMujV52RA54pGiEvx9Y2cN8o6x
Ac7TRQjt6Rh31tGrAFPKlmRUUIK34pbUE1gUIEcU/jJgHvKDCzq6fvi/16YOl46wFLq8e0Y9GlTM
yJHtK2yoVyIQfY7oiyRChwBXy0eDh4rPK4aWwYcriPORELKc0J1ghWATRYdyRo2VPoZAFlN9u9iu
VwhnkHq9R7HkuQ6YKknwB5Q3Zg6sZRSjP8Jr+DjTwfyZr/MAVowmKD2JEwOA6KqxsV4X8smYSP9Q
3ZRYuFz6NqMJZyVX4EBMet0vkkcYK4kLzPqb+g==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
JzckjEfD7+DkjyU/xQTpTjPA1YayKUNPRrUTGC3fhcc8GprmyBFvrhk1OtK1A8hBZbrSamISTzum
59dhP/cPbTZoeaJ6DYW+Y3u059u2w0yV1/SkF2WFzc1nxnAMndRKXnDy55S0iw+/J8phXB/lq0Qv
KowbLLcrvZijh84drCwDKAqEyB2Dsb+9IlNW8vTKutU+X9gv6evJsWObLEJESHPI9VWooIT5afHi
1y7I+OjIU6Rydo7LkG3IPolnxj9+KnGWIJUzI0TG1mxvxYvW/D3jw9HL8TBlKftupP5OhD/6Rsna
Y360uSStO9eVMiWRuOlOhRfTw46o6+/DQyLlpA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 4896)
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
