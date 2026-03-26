`timescale 1ns/1ps

module xnorr_tb;

reg [3:0] a,b;
wire [3:0] c;

xnorr dut (.a(a), .b(b) ,.c(c));

initial begin 
	$dumpfile("xnorr.vcd");
	$dumpvars(0,xnorr_tb);
end

initial begin
	$monitor("At time t=%0t, a=%b, b=%b | c=%b", $time, a,b,c);
end

initial begin 
	a=4'b1001; b=4'b0101; #10;
	a=4'b1111; b=4'b1011; #10;
	a=4'b0011; b=4'b0001; #10;
	$finish;
end
endmodule
