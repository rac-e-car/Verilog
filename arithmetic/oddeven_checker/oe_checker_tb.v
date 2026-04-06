module oe_checker_tb;
reg [7:0] a;
wire odd, even;
integer i;

oe_checker dut (.a(a), .odd(odd), .even(even));

initial begin
    $dumpfile ("oe_checker.vcd");
    $dumpvars (0, oe_checker_tb);

    $monitor("At time = %0t -- | a = %b | odd = %b, even = %b", $time, a,odd,even);

    for (i=-0; i<10; i=i+1) begin
    a = $urandom_range (0,7); #10;
    end
end
endmodule

