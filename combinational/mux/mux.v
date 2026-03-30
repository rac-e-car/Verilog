module mux_2x1_gate (input a,b,s, output y);

wire w1,w2,w3;

not (w1,s);
and (w2,w1,a);
and (w3,s,b);

or (y,w2,w3);

endmodule

module mux_2x1_df (input a,b,s, output y);

wire w1,w2,w3;

assign w1 = ~s;
assign w2 = w1 & a;
assign w3 = s & b;

assign y = w2 | w3;

endmodule

module mux_2x1_bh (input a,b,s, output reg y);

reg w1, w2, w3;


always @(*) begin
    w1 = ~s;
    w2 = w1 & a;
    w3 = s & b;

    y = w2 | w3;
end
endmodule
     
module mux_all (input a,b,s, output y_ga, y_da, y_be);

mux_2x1_gate m1 (.a(a),.b(b),.s(s),.y(y_ga));
mux_2x1_df m2 (.a(a),.b(b),.s(s),.y(y_da));
mux_2x1_bh m3 (.a(a),.b(b),.s(s),.y(y_be));

endmodule

