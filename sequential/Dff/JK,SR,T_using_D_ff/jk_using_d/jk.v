module jk (input j,k,clk, output q,qbar);

wire d;

assign d = (j & ~q)| (~k & q);
assign qbar = ~q;

D_ff d1 (.d(d), .clk(clk), .q(q));

endmodule

