module D_reset_tb;

reg d,clk, reset;
wire q, qbar;

D_reset dut (.d(d), .clk(clk), .reset(reset), .q(q), .qbar(qbar));

initial clk = 0;
always #5 clk=~clk;

initial begin 
    $dumpfile("d_r.vcd");
    $dumpvars(0,D_reset_tb);

    $monitor("At time=%0t-->| clk=%b, d=%b, reset=%b| q=%b, qbar=%b", $time,clk,d,reset,q,qbar);

    repeat(10) begin
        @(negedge clk);
        d=$random;
        reset=$random;
    end
    #10; $finish;
end
endmodule


