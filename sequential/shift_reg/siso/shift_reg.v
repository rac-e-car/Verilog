module shift_reg #(parameter N=4)
                    (input d,reset, clk, mode,
                     output  dout);

            reg [N-1:0] q;
                 
           always @(posedge clk, negedge reset) begin
               if (!reset)
                   q <= {N{1'b0}};
               else if (mode) begin
                   q <= (q>>1);
                   q[N-1] <= d;
                end
                else begin
                   q <= (q<<1);
                   q[0] <= d;
               end
              end
                
                assign dout = mode ? q[0] : q[N-1];

               endmodule 

                   
