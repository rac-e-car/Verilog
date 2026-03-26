`timescale 1ns/1ps

module xorr_tb;

reg [3:0] a,b;
wire [3:0] c;

xorr dut (.a(a), .b(b),.c(c));

initial begin
	$dumpfile("xor_gate.vcd");
	$dumpvars(0,xorr_tb);
end

initial begin
	$monitor ("At time t=%ot, a= %b, b=%b | c = %b", $time, a,b,c);
end

initial begin
	a = 4'b0100; b= 4'b1100; #10;
	a = 4'b1110; b= 4'b0011; #10;
	$finish;
end
endmodule

