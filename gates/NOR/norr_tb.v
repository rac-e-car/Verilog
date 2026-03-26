module norr_tb;

reg [3:0] a,b;
wire [3:0] c;

norr dut (.a(a), .b(b), .c(c));
initial begin
	$dumpfile ("nor_gate.vcd");
	$dumpvars (0,norr_tb);

end

initial begin
	$monitor ("at time + %0t, a = %b, b = %b | c=%b", $time, a,b,c);
end

initial begin
	a=4'b0110; b=4'b1000; #10;
	a=4'b0010; b=4'b1001; #10
	$finish;
end
endmodule
