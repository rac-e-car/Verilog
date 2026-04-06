module d_latch (input D, E, output reg q);

always @ (D,E) begin
    if (E)
        q <= D;
end
endmodule
