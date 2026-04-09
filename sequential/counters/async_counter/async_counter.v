module async_counter #(parameter N=4)
                        (input [N-1:0] din,
                         input clk, rst, up,
                         output [N-1:0] q);

               always @(posedge clk) begin
                   if (rst)
                       q <= {N{1'b0}};

                   else if (up) begin
                       for (i=0; i<4; i=i+1) begin
                           d[i] 

