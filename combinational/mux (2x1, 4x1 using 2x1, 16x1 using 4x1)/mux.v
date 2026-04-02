module mux_2x1_gate (input [1:0] a, input s, output y);

wire w1,w2,w3;

not (w1,s);
and (w2,w1,a[0]);
and (w3,s,a[1]);

or (y,w2,w3);

endmodule

module mux_2x1_df (input [1:0] a, input s, output y);

wire w1,w2,w3;

assign w1 = ~s;
assign w2 = w1 & a[0];
assign w3 = s & a[1];

assign y = w2 | w3;

endmodule

module mux_2x1_bh (input [1:0] a, input s, output reg y);


always @(*) begin
if (s)
    y=a[1];
else
    y=a[0];

end

endmodule
     
module mux_all (input [1:0] a, input s, output y_ga, y_da, y_be);

mux_2x1_gate m1 (.a(a[1:0]),.s(s),.y(y_ga));
mux_2x1_df m2 (.a(a[1:0]),.s(s),.y(y_da));
mux_2x1_bh m3 (.a(a[1:0]),.s(s),.y(y_be));

endmodule

