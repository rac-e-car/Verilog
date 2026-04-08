module sipo #(parameter N=4)
            (input d, reset, clk, 
                output [N-1:0] dout);

            reg [N-1:0] q;

         always @(posedge clk, negedge reset) begin
             if(!reset)
                 q = {N{1'b0}};
             else

                 q = (q>>1);
                  q[N-1] = d;
            
         end
         assign dout = q;

endmodule

