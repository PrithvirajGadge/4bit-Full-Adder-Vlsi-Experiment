`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.09.2026 08:50:43
// Design Name: 
// Module Name: Full_source
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


module Full_source(
    input A3,
    input A2,
    input A1,
    input A0,
    input B3,
    input B2,
    input B1,
    input B0,
    input Cin,
    output Sum3,
    output Sum2,
    output Sum1,
    output Sum0,
    output Cout
    );

    wire C1, C2, C3;

    // Bit 0
    assign Sum0 = A0 ^ B0 ^ Cin;
    assign C1 = (A0 & B0) | (B0 & Cin) | (A0 & Cin);

    // Bit 1
    assign Sum1 = A1 ^ B1 ^ C1;
    assign C2 = (A1 & B1) | (B1 & C1) | (A1 & C1);

    // Bit 2
    assign Sum2 = A2 ^ B2 ^ C2;
    assign C3 = (A2 & B2) | (B2 & C2) | (A2 & C2);

    // Bit 3
    assign Sum3 = A3 ^ B3 ^ C3;
    assign Cout = (A3 & B3) | (B3 & C3) | (A3 & C3);

endmodule

