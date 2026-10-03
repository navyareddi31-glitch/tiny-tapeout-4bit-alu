/*
 * Copyright (c) 2024 Your Name
 * SPDX-License-Identifier: Apache-2.0
 */

module alu_4bit (
    input  wire [3:0] a,
    input  wire [3:0] b,
    input  wire [1:0] opcode,
    output reg  [3:0] y,
    output reg        carry
);

    always @(*) begin

        y     = 4'b0000;
        carry = 1'b0;

        case (opcode)

            2'b00: begin
                {carry, y} = a + b;
            end

            2'b01: begin
                {carry, y} = a - b;
            end

            2'b10: begin
                y = a & b;
            end

            2'b11: begin
                y = a | b;
            end

        endcase

    end

endmodule
