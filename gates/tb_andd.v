`timescale 1ns/1ps;
module tb_andd;
reg  [3:0] a,b;
wire  [3:0] c;

andd dut (.a(a), .b(b), .c(c));
initial begin
	$dumpfile ("and_gate.vcd");
	$dumpvars (0,tb_andd);
end
initial begin
	$display ("And operation at %0t", $time);
	$monitor ("a = %b, b = %b| c = %b", a,b,c);
end
initial begin 
	a = 4'b1101; b = 4'b0111; #10;
	a = 4'b0101; b = 4'b1111; #10;
	a = 4'b1000; b = 4'b1010; #10;
	$finish;
end
endmodule
