`timescale 1ns/1ps

module fa_tb;
reg [3:0]  a,b;
reg cin;
wire [3:0] s;
wire c;
integer i;

fa dut (.a(a),.b(b),.cin(cin),.s(s),.c(c));

initial begin 
	$dumpfile("full_adder.vcd");
	$dumpvars(0);
end

initial begin
	$monitor ("At time = %ot, a=%b, b=%b, cin=%b | s=%b, c=%b",$time, a,b,cin,s,c);
	a=0; b=0; cin=0;
end
initial begin
	for (i=0; i<5; i=i+1) begin
	#10; a <= $urandom_range (0,15);
	b <= $urandom_range (0,15);
	cin <= $urandom_range (0,1);
end
end
endmodule
