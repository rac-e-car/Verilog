`timescale 1ns/1ps;

module nandd_tb;

reg [3:0] a,b;
wire [3:0] c;


nandd dut (.a(a), .b(b), .c(c));

initial begin
	$dumpfile ("nand_gate.vcd");
	$dumpvars (0,nandd_tb);
end

initial begin
	$monitor ("At time t=%0t, a = %b, b = %b | c = %b", $time,a,b,c);
end

initial begin
	a = 4'b1011; b = 4'b0111; #10;
	a= 4'b1100; b = 4'b1011; #10;
	a = 4'b 0001; b=4'b1001; #10;
	$finish;
end
endmodule

