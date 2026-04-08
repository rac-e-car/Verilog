module piso_tb;

reg [3:0] din;
reg clk, reset, load;
wire dout;

piso dut (.din(din), .clk(clk), .reset(reset), .load(load), .dout(dout));
always #5 clk=~clk;

initial begin
    $dumpfile("piso.vcd");
    $dumpvars(0,piso_tb);

    $monitor ("At time=%0t-->| clk=%b, reset=%b, load=%b, din=%b | dout=%b",$time,clk,reset,load,din,dout);

    clk=0;
    reset=0;
    load=0;
    din=0;

    @(posedge clk) reset = 1;

    load = 1;
    din = 1;
    repeat (6) @(posedge clk);

    load =0;
    din = 1;
    repeat (6) @(posedge clk);

$finish;
end
endmodule


