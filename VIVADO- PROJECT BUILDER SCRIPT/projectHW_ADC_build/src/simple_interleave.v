module simple_interleave(
    input        CLKDIV,              // replaces CLKDIV_4 - use as a clock, not a select
    input        clk_reset,
    input [31:0] DDS_AB_tdata,        // [15:0]=Ch_A, [31:16]=Ch_B
    input        DDS_AB_tvalid,
    input [31:0] DDS_CD_tdata,        // [15:0]=Ch_C, [31:16]=Ch_D
    input        DDS_CD_tvalid,
    output reg [31:0] data_out_from_device
);

    reg sel;   // 0 ? AB cycle,  1 ? CD cycle

    always @(posedge CLKDIV) begin
        if (clk_reset) begin
            sel                  <= 1'b0;
            data_out_from_device <= 32'h0;
        end else begin
            sel                  <= ~sel;
            data_out_from_device <= sel ? DDS_CD_tdata : DDS_AB_tdata;
        end
    end

endmodule