module switch_and_tb;

reg  a,b;
wire y, btw, com;

switch_and dut (.a(a), .b(b), .y(y));

initial begin
    $dumpfile ("switch level.vcd");
    $dumpvars (0,switch_and_tb);

    $monitor ("At time = %0t| a=%b, b=%b, btw=%b, com=%b | y=%b", $time, a,b,btw,com,y);
    
    a = 0; b = 1; #10;
    a=1; b=0; #10;
    $finish;

end
endmodule
