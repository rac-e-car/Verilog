`timescale 1ns/1ps

module rca_tb;

reg [3:0] a,b;
wire [3:0] sum;
wire cin;
wire cout;

rca dut (.a(a),
	 .b(b),
	 .cin(cin),
	 .sum(sum),
	 .cout(cout));

 initial begin
	 $dumpfile ("ripple_adder.vcd");
	 $dumpvars (0,rca_tb);
 end

 initial begin
	 $monitor ("At time = %0t, a = %b, b=%b,cin=%b, cout = %b, sum = %b", $time, a,b,cin,cout,sum);
	 
 end

always @(a or b or cin) begin
	#10; a = $urandom (0,15);
	b = $urandom (0,15);
	cin = $urandom (0,1);
	
end
endmodule


