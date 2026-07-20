`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.12.2025 12:07:55
// Design Name: 
// Module Name: SIMPLE_INTERLEAVE
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module MT_interlace(
    input CLKDIV_4,
    input [15:0] CH1_I,
    input [15:0] CH1_Q,
    input [15:0] CH2_I,
    input [15:0] CH2_Q,
    output [31:0] DATA_out
    );
    
    assign DATA_out = CLKDIV_4 ? {CH1_I, CH1_Q} : {CH2_I, CH2_Q};                          
endmodule