module sync_counter_tb;

reg up, clk, rst;
    wire [3:0] cnt;

    sync_counter #(.N(4)) dut (.up(up), .clk(clk), .rst(rst), .cnt(cnt));

 always #5 clk=~clk;

 initial begin 
     $monitor("At time=%0t-->| clk=%b, rst=%b, up=%b | cnt=%b", $time,clk,rst,up,cnt);

     clk=0; rst=1; up=0;

     @(posedge clk) rst=0;

     repeat (4) begin
         @(negedge clk);
         up=1;
     end

     repeat (4) begin
         @(negedge clk);
         up=0;
     end

     #20; $finish;
 end
 endmodule
