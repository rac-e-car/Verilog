module rca (input [3:0] a,b,
		input cin,
		output [3:0]sum, 
		output cout); 
wire [4:0] cinn;
genvar i;
assign cinn[0]=cin;
generate
	
for (i=0;i<4;i=i+1) begin: rca_block

fa fa_inst ( .a(a[i]), .b(b[i]), .cin(cinn[i]), .sum(sum[i]), .cout(cinn[i+1]) );

end
assign cout = cinn[4];		
endgenerate


endmodule
