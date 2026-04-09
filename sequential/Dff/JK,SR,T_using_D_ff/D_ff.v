module D_ff (input d, clk, output reg q);

initial q=0;
always @(posedge clk) begin
 
        q <= d;
        
    end
    endmodule
