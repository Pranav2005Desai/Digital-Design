`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.09.2025 13:35:57
// Design Name: 
// Module Name: bin_gray
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


module bin_gray(g0,g1,g2,g3,b0,b1,b2,b3);
input logic b0,b1,b2,b3;
output logic g0,g1,g2,g3;
assign g3=b3;
assign g2=b3^b2;
assign g1=b2^b1;
assign g0=b1^b0;
endmodule

