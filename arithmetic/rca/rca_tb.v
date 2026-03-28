`timescale 1ns/1ps

module rca_tb;

reg [3:0] a,b;
reg cin;
wire [3:0] sum;
wire cout;
wire [4:0]cinn;
integer i;

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
	 
	 a=0; b=0; cin=0;
	 #10;

	 for (i=0;i<10;i+=1) begin
		 a = $urandom_range (0,15);
		 b = $urandom_range (0,15);
		 cin = $urandom_range (0,1);

	 #10;
 end
 $finish;

end
endmodule


