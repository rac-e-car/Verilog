`timescale 1ns/1ps

module switch_inv_tb;

reg i;
wire o;

switch_inv dut (.i(i),.o(o));

initial begin 
    $dumpfile ("inv.vcd");
    $dumpvars (0, switch_inv_tb);
    
    $monitor ("i=%b | o=%b",i,o);

    i = 0; #10;
    i = 1; #10;
    
    $finish;
end
endmodule
