`timescale 1ns/1ps

module tb_logic_gates;

reg A, B;

wire AND_OUT;
wire OR_OUT;
wire NOT_A;
wire NAND_OUT;
wire NOR_OUT;
wire XOR_OUT;

logic_gates uut(
.A(A),
.B(B),
.AND_OUT(AND_OUT),
.OR_OUT(OR_OUT),
.NOT_A(NOT_A),
.NAND_OUT(NAND_OUT),
.NOR_OUT(NOR_OUT),
.XOR_OUT(XOR_OUT)
);

initial begin

$dumpfile("logic_gates.vcd");
$dumpvars(0,tb_logic_gates);

A=0; B=0; #10;
A=0; B=1; #10;
A=1; B=0; #10;
A=1; B=1; #10;

$finish;

end

endmodule