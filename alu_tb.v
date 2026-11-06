
`timescale 1ns/1ps

module alu_tb;

reg [15:0] A;
reg [15:0] B;
reg [2:0] control;

wire [15:0] result;
wire zero;

// Connect the ALU
alu_16bit uut (
    .A(A),
    .B(B),
    .control(control),
    .result(result),
    .zero(zero)
);

initial begin

    $dumpfile("alu_wave.vcd");
    $dumpvars(0, alu_tb);

    A = 16'd12;
    B = 16'd4;

    control = 3'b000;
    #10;
    $display("ADD: %d + %d = %d", A, B, result);

    control = 3'b001;
    #10;
    $display("SUB: %d - %d = %d", A, B, result);

    control = 3'b010;
    #10;
    $display("AND: %d", result);

    control = 3'b011;
    #10;
    $display("OR: %d", result);

    control = 3'b100;
    #10;
    $display("XOR: %d", result);

    control = 3'b101;
    #10;
    $display("NOT: %h", result);

    control = 3'b110;
    #10;
    $display("SHL: %d", result);

    control = 3'b111;
    #10;
    $display("SHR: %d", result);

    // Test zero flag
    A = 16'd5;
    B = 16'd5;
    control = 3'b001;
    #10;

    $display("ZERO FLAG TEST: Result=%d, Zero=%b",
             result, zero);

    $finish;

end

endmodule
