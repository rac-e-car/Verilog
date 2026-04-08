module register_tb;

reg [3:0] d;
reg en, clk, reset;
wire [3:0] q;

register dut (.d(d), .en(en), .clk(clk), .reset(reset), .q(q));
always #5 clk = ~clk;

initial begin
    $dumpfile("register.vcd");
    $dumpvars(0,register_tb);

    $monitor("At time=%0t-->| d=%b, en=%b, clk=%b, reset=%b | q=%b", $time, d,en,clk,reset,q);
    
    clk=0;
    en=0;
    reset = 1;
    d = 0;

    #10; reset = 0;

    repeat (8) begin
        @(negedge clk);
        d = $random; 
        en = $random;
        
    end
#20; $finish;
end
endmodule


