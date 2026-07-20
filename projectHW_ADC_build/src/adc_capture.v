// adc_capture.v
// Multi-bank LVDS DDR ADC input capture.
// Replaces SelectIO wizard - uses BUFG so all 4 banks can be driven.
//
// Pin-to-bank map:
//   data[5:0]               -> Bank 13 (HP, IOSTANDARD LVDS    in XDC)
//   data[9:6], ADC_OR       -> Bank 34 (HR, IOSTANDARD LVDS_25 in XDC)
//   data[13:10], DCLK       -> Bank 35 (HR, IOSTANDARD LVDS_25 in XDC)
//
// data_out bit mapping: data_out[2*i] = rising edge, data_out[2*i+1] = falling edge

module adc_capture #(
    parameter N = 14
)(
    (* X_INTERFACE_PARAMETER = "IOSTANDARD LVDS_25, DIFF_TERM TRUE" *)
    (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 ADC_DCLK CLK_P" *)
    input  wire         ADC_DCLK_clk_p,
    (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 ADC_DCLK CLK_N" *)
    input  wire         ADC_DCLK_clk_n,

    input  wire         ADC_OR_clk_p,
    input  wire         ADC_OR_clk_n,
    
    
    input  wire [N-1:0] ADC_DATA_p,
    input  wire [N-1:0] ADC_DATA_n,
    output wire         clk_out,
    output wire [2*N-1:0] data_out,
    output wire         or_out
);

    // Clock: IBUFDS -> BUFG (global, reaches all banks)
    wire clk_ibuf;

    IBUFDS #(
        .DIFF_TERM   ("TRUE"),
        .IBUF_LOW_PWR("FALSE")
    ) u_clk_ibuf (
        .I  (ADC_DCLK_clk_p),
        .IB (ADC_DCLK_clk_n),
        .O  (clk_ibuf)
    );

    BUFG u_clk_bufg (
        .I (clk_ibuf),
        .O (clk_out)
    );

    // Data: IBUFDS -> IDDR per bit
    genvar i;
    generate
        for (i = 0; i < N; i = i + 1) begin : gen_data
            wire data_ibuf;

            IBUFDS #(
                .DIFF_TERM   ("TRUE"),
                .IBUF_LOW_PWR("FALSE")
            ) u_data_ibuf (
                .I  (ADC_DATA_p[i]),
                .IB (ADC_DATA_n[i]),
                .O  (data_ibuf)
            );

            IDDR #(
                .DDR_CLK_EDGE("SAME_EDGE_PIPELINED"),
                .INIT_Q1     (1'b0),
                .INIT_Q2     (1'b0),
                .SRTYPE      ("SYNC")
            ) u_data_iddr (
                .Q1 (data_out[2*i]),
                .Q2 (data_out[2*i+1]),
                .C  (clk_out),
                .CE (1'b1),
                .D  (data_ibuf),
                .R (1'b0),
                .S  (1'b0)
            );
        end
    endgenerate

    // Over-range: IBUFDS -> register
    wire or_ibuf;

    IBUFDS #(
        .DIFF_TERM   ("TRUE"),
        .IBUF_LOW_PWR("FALSE")
    ) u_or_ibuf (
        .I  (ADC_OR_clk_p),
        .IB (ADC_OR_clk_n),
        .O  (or_ibuf)
    );

    FDRE u_or_reg (
        .Q  (or_out),
        .C  (clk_out),
        .CE (1'b1),
        .D  (or_ibuf),
        .R (1'b0)
    );

endmodule