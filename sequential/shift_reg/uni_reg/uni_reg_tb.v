module uni_reg_tb;

reg [3:0] pin;
reg sin, clk, reset;
reg [1:0] mode;
wire [3:0] dout;
integer i;

uni_reg #(.N(4)) dut (.pin(pin), .sin(sin), .clk(clk), .reset(reset), .mode(mode), .dout(dout));

always #5 clk = ~clk;

initial begin 
    $dumpfile ("uni_reg.vcd");
    $dumpvars (0,uni_reg_tb);

    $monitor ("AT time=%0t-->| clk=%b, reset=%b, mode=%b, parallel_in=%b, serial_in=%b | dout=%b",$time,clk,reset,mode,pin,sin,dout);

    sin=0; clk=0; mode=0;
    reset = 0;

    @(posedge clk) reset = 1;

    for(i=0; i<4; i++) begin
        mode =i;

      if (mode == 2'b11) pin = $random;

      else 
          sin = $random; repeat (4)@(negedge clk);
  end
  #20; $finish;
 end
endmodule
      
     
    
