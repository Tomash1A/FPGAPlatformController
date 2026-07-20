`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/29/2026 09:19:27 AM
// Design Name: 
// Module Name: INTERLEAVE
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


module INTERLEAVE(
    input CLK,
    input [31:0] CH1,
    input [31:0] CH2,
    output [31:0] DATA_out
    );
    
    assign DATA_out = CLK ? {CH1} : {CH2};                          
endmodule
