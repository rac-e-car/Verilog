module D_ff_tb;

reg d,clk;
wire q, qbar;

D_ff dut (.d(d), .clk(clk), .q(q), .qbar(qbar));

initial clk=0;
always #5 clk=~clk;

initial begin
    $dumpfile ("D_ff.vcd");
    $dumpvars (0,D_ff_tb);

    $monitor ("At time-%0t-->| clk=%b d=%b, q=%b, qbar=%b", $time,clk, d,q,qbar);

    
        repeat(8) begin
        @(negedge clk);
            d=$random;
       
    end
    #10; $finish;
end
endmodule
