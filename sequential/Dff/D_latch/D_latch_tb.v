module d_latch_tb;

reg D,E;
wire q;

d_latch dut (.D(D), .E(E), .q(q));
    
initial begin
    $dumpfile ("d_latch.vcd");
    $dumpvars (0, d_latch_tb);

    $monitor ("At time=%0t-->| D=%d, E=%d, q=%d", $time, D,E,q);
    
    repeat (3) begin
    D=$random; #10;
    E=$random; #10;
end
end
endmodule
