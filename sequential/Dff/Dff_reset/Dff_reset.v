module D_reset (input d,clk,reset, output reg q,qbar);

always @(posedge clk) begin
    if(reset)
        {q,qbar} <= 2'b01;
    else
        {q, qbar} <= {d,~d};
end
endmodule
