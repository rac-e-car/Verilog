module D_reset_tb;

reg d,clk, reset;
wire Q_syn, QB_syn, Q_Asyn, QB_Asyn;

d_r dut (.d(d), .clk(clk), .reset(reset), .Q_syn(Q_syn), .QB_syn(QB_syn),.Q_Asyn(Q_Asyn),.QB_Asyn(QB_Asyn));

initial clk = 0;
always #5 clk=~clk;

initial begin 
    $dumpfile("d_r.vcd");
    $dumpvars(0,D_reset_tb);

    $monitor("At time=%0t-->| clk=%b, d=%b, reset=%b| Q_Sync=%b, QB_Sync=%b, Q_Async=%b,QB_Async=%b", $time,clk,d,reset,Q_syn,QB_syn,Q_Asyn,QB_Asyn);

    repeat(8) begin
       @(negedge clk); 
        d=$random;
        reset=$random;
    end
    #10; $finish;
end 

endmodule


