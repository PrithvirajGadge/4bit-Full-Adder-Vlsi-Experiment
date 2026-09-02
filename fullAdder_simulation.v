`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.09.2026 08:58:03
// Design Name: 
// Module Name: Full_sim
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

`timescale 1ns / 1ps

module tb_Full_source;

    reg A3;
    reg A2;
    reg A1;
    reg A0;

    reg B3;
    reg B2;
    reg B1;
    reg B0;

    reg Cin;

    wire Sum3;
    wire Sum2;
    wire Sum1;
    wire Sum0;
    wire Cout;

    // Connect testbench to actual design
    Full_source DUT (
        .A3(A3),
        .A2(A2),
        .A1(A1),
        .A0(A0),

        .B3(B3),
        .B2(B2),
        .B1(B1),
        .B0(B0),

        .Cin(Cin),

        .Sum3(Sum3),
        .Sum2(Sum2),
        .Sum1(Sum1),
        .Sum0(Sum0),

        .Cout(Cout)
    );

    initial begin

        // Test 1: 0 + 0
        A3=0; A2=0; A1=0; A0=0;
        B3=0; B2=0; B1=0; B0=0;
        Cin=0;
        #10;

        // Test 2: 3 + 2 = 5
        A3=0; A2=0; A1=1; A0=1;
        B3=0; B2=0; B1=1; B0=0;
        Cin=0;
        #10;

        // Test 3: 5 + 3 = 8
        A3=0; A2=1; A1=0; A0=1;
        B3=0; B2=0; B1=1; B0=1;
        Cin=0;
        #10;

        // Test 4: 10 + 5 = 15
        A3=1; A2=0; A1=1; A0=0;
        B3=0; B2=1; B1=0; B0=1;
        Cin=0;
        #10;

        // Test 5: 15 + 1 = 16
        A3=1; A2=1; A1=1; A0=1;
        B3=0; B2=0; B1=0; B0=1;
        Cin=0;
        #10;

        // Test 6: 15 + 15 + 1 = 31
        A3=1; A2=1; A1=1; A0=1;
        B3=1; B2=1; B1=1; B0=1;
        Cin=1;
        #10;

        $finish;

    end

endmodule
