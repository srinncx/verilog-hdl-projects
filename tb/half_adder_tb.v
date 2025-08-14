`timescale 1ns / 1ps
//===========================================================
// Testbench: Half Adder
// Author: srinncx
// Date: 2025-08-14
// Description:
//   Testbench to verify the functionality of the 1-bit half adder.
//   Applies all possible input combinations (00, 01, 10, 11)
//   and observes the outputs sum and carry.
//===========================================================

module half_adder_tb;

    // Testbench signals
    reg  a;      // Input bit A
    reg  b;      // Input bit B
    wire sum;    // Output sum from half adder
    wire carry;  // Output carry from half adder

    // Instantiate the design under test (DUT)
    half_adder h1 (
        .a(a),
        .b(b),
        .sum(sum),
        .carry(carry)
    );

    // Apply test vectors
    initial begin
        
        a = 1'b0; b = 1'b0; #10; // Case 1: 0 + 0
        a = 1'b0; b = 1'b1; #10; // Case 2: 0 + 1
        a = 1'b1; b = 1'b0; #10; // Case 3: 1 + 0
        a = 1'b1; b = 1'b1; #10; // Case 4: 1 + 1

        $finish; // End simulation
    end

endmodule
