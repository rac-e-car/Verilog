`timescale 1ns/1ps

module orr_tb;

reg [3:0] a,b;
wire [3:0] c;

orr dut (.a(a), .b(b), .c(c));

initial begin
	$dumpfile ("or_gate.vcd");
	$dumpvars (0,orr_tb);
end

initial begin
	$monitor ("At time t=%0t, a = %b, b= %b | c = %b", $time, a,b,c);
end

initial begin
	a = 4'b1001; b = 4'b0110; #10;
	a = 4'b0101; b = 4'b1100; #10;
	a = 4'b0101; b = 4'b1110; #10;

end
endmodule
