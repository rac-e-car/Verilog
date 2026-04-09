module shift_reg_tb;

reg d, reset, clk, mode;
wire dout;

shift_reg #(.N(4)) dut (.d(d), .reset(reset), .clk(clk), .mode(mode), .dout(dout));
always #5 clk=~clk;

initial begin
    $dumpfile("shift_reg.vcd");
    $dumpvars(0,shift_reg_tb);
    
    $monitor("At time t=%0t-->| clk=%b, reset=%b, mode=%b, d=%b | dout=%b", $time,clk,reset,mode,d,dout);
    clk=0;
    reset = 0;
    d=0;
    mode=0;
    
    @(posedge clk);
     reset = 1;


     d =1;
     mode=0;
    repeat(6)@(posedge clk);
        
      d =0;
     mode=1;
    repeat(6)@(posedge clk);

       
        
     $finish;
    end
endmodule
