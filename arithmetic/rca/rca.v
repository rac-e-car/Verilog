module rca (input [3:0] a, b, output [3:0] sum, output cout);

wire [4:0] cin;
genvar i;
assign cin[0] = 0;
generate 
for (i=0;i<4;i=i+1) begin: rca_block

fa fa_inst ( .a(a[i]), .b(b[i]), .cin(cin[i]), .sum(sum[i]), .cout(cin[i+1]) );

end 
assign cout = cin[4];
		
endgenerate
endmodule
