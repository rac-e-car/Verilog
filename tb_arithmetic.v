`timescale 1ns/1ps

module tb_arithmetic;

reg [3:0] a, b;

wire [3:0] sum, sub, mul, div;

arithmetic uut (
	.a(a), 
	.b(b), 
	.sum(sum), 
	.sub(sub), 
	.mul(mul), 
	.div(div)
	);

initial begin

$dumpfile("arithmetic_oprations.vcd");
$dumpvars(0, tb_arithmetic);

$display ("Addition, subtraction, multiplication and division in order at %0t",$time);
$monitor ("time =%0t| a= %d, b=%d | sum = %d, sub = %d, mul = %d, div = %d", $time, a, b, sum, sub, mul, div);


a = 10; b = 5; #10;
a = 12; b= 8; #10;
a = 5; b = 2; #10;

$finish;

end
endmodule
