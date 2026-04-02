module mux4x1 (input [3:0]a, input [1:0]s, output y);
wire [1:0] en; 

mux_2x1_bh m1 (.a(a[1:0]), .s(s[0]), .y(en[0]));
mux_2x1_bh m2 (.a(a[3:2]), .s(s[0]), .y(en[1]));

mux_2x1_bh m3 (.a(en[1:0]), .s(s[1]), .y(y));

endmodule





