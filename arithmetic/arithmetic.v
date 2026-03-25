
module arithmetic (
	input [3:0] a,b, 
	output [3:0] sum, sub, mul, div);

	assign sum = a+b;
	assign sub = a-b;
	assign mul = a*b;
	assign div = a/b;
endmodule

