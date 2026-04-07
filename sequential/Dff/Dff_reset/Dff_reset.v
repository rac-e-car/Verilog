module D_reset (input d,clk,reset, output reg q,output qbar);
assign qbar = ~q;
always @(posedge clk) begin
    if(reset)
        q <= 1'b0;
    else
        q <= d;
end
endmodule

module D_reset_async (input d,clk,reset, output reg q,output qbar);
assign qbar = ~q;
always @(posedge clk, posedge reset) begin
    if (reset)
        q <= 1'b0;
    else
        q <= d;
end
endmodule

module d_r (input d,clk,reset, output Q_syn, QB_syn, Q_Asyn, QB_Asyn);

D_reset d1 (.d(d), .clk(clk), .reset(reset), .q(Q_syn), .qbar(QB_syn));
D_reset_async d2 (.d(d), .clk(clk), .reset(reset), .q(Q_Asyn), .qbar(QB_Asyn));

endmodule
