`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.09.2025 15:17:56
// Design Name: 
// Module Name: gray_bin
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


module gray_bin(g0,g1,g2,g3,b0,b1,b2,b3);
input logic g0,g1,g2,g3;
output logic b0,b1,b2,b3;
assign b3=g3;
assign b2=g3^g2;
assign b1=g2^g1;
assign b0=g1^g0;
endmodule

