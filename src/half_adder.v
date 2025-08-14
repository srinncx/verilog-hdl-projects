`timescale 1ns / 1ps
//===========================================================
// Module: Half Adder
// Author: srinncx
// Date: 2025-08-14
// Description:
//   This module implements a 1-bit Half Adder using
//   behavioral continuous assignments.
//===========================================================

module half_adder (
    input  wire a,      // First input bit
    input  wire b,      // Second input bit
    output wire sum,    // Sum output
    output wire carry   // Carry output
);

    // Logic
    assign sum   = a ^ b;  // XOR operation
    assign carry = a & b;  // AND operation

endmodule
