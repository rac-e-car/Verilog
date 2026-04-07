module register #(parameter N = 4)
                    (input [N-1:0] d,
                     input en, clk, reset,
                     output reg [N-1:0] q);
                 
        always @(posedge clk) begin
            if(reset)
                q <= 4'b0;
            else if (en)
                q <= d;
            
        end
 endmodule


