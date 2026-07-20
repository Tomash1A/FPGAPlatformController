// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Thu Jun 25 12:13:35 2026
// Host        : CS-RO-PC29 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/shtomer/WIS_work/WIP/build_Test/projectHW_ADC_build/projectHW/projectHW.gen/sources_1/bd/projectHW/ip/projectHW_c_counter_binary_0_0/projectHW_c_counter_binary_0_0_sim_netlist.v
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
  projectHW_c_counter_binary_0_0_c_counter_binary_v12_0_14 U0
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
lWyJNdK87BgwSN9I7wMeY1cXYRqKbxIcfuFHFrWr5iIW16Jeb53l/ZSg2UKWyQ5MZgPzrTt/DRja
4k0HoGFf1zaNSnczHAd9a7V8d1uHz/eNpT3Oxwh0yoDelJFFgc8ETRy5SnX4SDi+mxOCnfGc3CIP
//RDmTxumCZVzAPzIxgNoC3TteRKF6RMQq4JBbbtL6ZKVBrykeJPx2dDcCtuvWabmRpodi1KLDbs
pH84OlMa1ZwjjbR17vmRBjqRGCnuU94RkzhqZKMRA5eB/kTDsjrHksnh1uXxi2L+amFHulN3AMgR
XxEfhH+AuAkgnVB3biUzGRVZUyuPYy/m5yGNBg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ToNL3CIjDnD5FC2SGY/BmwnAaKFL8f9CyAMFye3w7OmHnu7NZrLZj2qCJ1+L7UGMn/hVVcF8rYkA
AzYmZBfftROywjK/uTi9RCvegesmfF/uVhjTIgAH7pcSyc7zOm+aKmZSZtkWFWiVjIzIA2qPcSv+
YAgKSpoYteFvp0I02L0HC+szbnr36j+Gq/cmG/wHdFcsnxZh2JScF6zFLWkwhf5rY+SFB0e5Y9Aw
GUZAMRRTkQRZAxrGrTrWAesMY0M6QlKXuk5RjjOAX5z8+11KxCNvXVZKJR4ohAgUuniuP7wvY4f3
C3IBVsmYt9IcIjANCTfKiAhqFZ/ZcjNGIy0S4Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 5024)
`pragma protect data_block
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
8wuwOrZLg8g=
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
