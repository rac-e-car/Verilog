module encoder #(parameter N=8, parameter Y = $clog2 (N))
                 (   input [N-1:0] d,
                    output reg [Y-1:0] a
                 );

                 integer i;
                 
                 always @(*) begin
                     a = 0;
                     for (i=0; i<N; i=i+1) begin
                         if(d[i]) a = i;

                     end
             end
             endmodule




                 
