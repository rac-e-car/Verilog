module sync_counter #(parameter N=4)
                    (input up, clk, rst,
                     output reg [N-1:0] cnt);

           always @(posedge clk) begin
               if (rst) begin
                   cnt <= {N{1'b0}};
               end

               else if (up) begin
                   cnt <= cnt+1;
               end                    

                else begin
                   cnt <= cnt-1;
               end

           end
endmodule

