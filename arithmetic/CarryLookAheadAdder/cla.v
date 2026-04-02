module cla (input [3:0] a,b, input cin, output [3:0] sum, output cout);
wire [3:0] p,g;
wire [4:0] c;
assign c[0] = cin;
genvar i;

generate

    for (i=0; i<4; i=i+1) begin: cla_block

    assign g[i] = a[i] & b[i];
    assign p[i] = a[i] ^ b[i];
    

    assign c[i+1] = g[i] | (p[i] & c[i]);
    
    assign sum[i] = p[i] ^ c[i];

end
endgenerate
assign cout = c[4];

endmodule


