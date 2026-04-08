module sipo_tb;

reg d, reset, clk;
wire [3:0] dout;

sipo #(.N(4)) dut (.d(d), .reset(reset), .clk(clk), .dout(dout));
always #5 clk=~clk;

initial begin
    $dumpfile("sipo.vcd");
    $dumpvars(0,sipo_tb);

    $monitor("At time =%0t-->| clk=%b, reset=%b, d=%b | dout=%b",$time, clk,reset,d,dout);

    reset=0;
    clk=0;
    d=0;

    @(posedge clk)
        reset=1;

     d=1;
     repeat(6) @(posedge clk);

     d=0;
     repeat(6) @(posedge clk);

     $finish;
 end 
 
 endmodule
     
    
