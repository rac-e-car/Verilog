module mux16x1 (input [15:0] a, input [3:0]s, output y);
wire [3:0] en;

genvar i;

generate

    for(i=0; i<4; i=i+1) begin
        mux4x1 mu (
                    .a(a[(i*4)+3 : i*4]), 
                    .s(s[1:0]), 
                    .y(en[i])
                  );
    end

mux4x1 mu5 (.a(en), .s(s[3:2]), .y(y));

endgenerate
endmodule



