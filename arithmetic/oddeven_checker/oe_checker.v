module oe_checker (input [7:0] a, output odd, even);

assign odd = ^a;
assign even = ~^a;

endmodule
