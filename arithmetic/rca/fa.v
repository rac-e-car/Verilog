module fa (input [3:0] a,b, input cin, output reg [3:0] sum, output reg cout);


always @(a or b or c) begin
{cout,sum} = a+b+cin;
end
endmodule
