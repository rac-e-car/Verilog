module uni_reg #(parameter N=4)               

                 (input [N-1:0] pin,
                  input sin, clk, reset,
                  input [1:0] mode,
                  output [N-1:0] dout );
             
          reg [N-1:0] q;

         always @(posedge clk, negedge reset) begin
                
             if (!reset) begin
                 q <= {N{1'b0}};
                end

                else if (mode == 2'b01) begin
                 q <= (q>>1);
                 q[N-1] <= sin;
                end

                else if (mode == 2'b10) begin
                 q <= (q<<1);
                 q[0] <= sin;
                end

                else if (mode == 2'b11) begin

                   q <= pin;
                end 
      end
          assign dout = q;

          endmodule
