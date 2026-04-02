module mux16x1tb;

reg [15:0] a;
reg [3:0] s;
wire y;
integer i;

mux16x1 dut (.a(a), .s(s), .y(y));

initial begin
    $dumpfile ("mux16x1.vcd");
    $dumpvars (0, mux16x1tb);

    $monitor ("At time=%0t - | a=%b, s=%b | y=%b", $time,a,s,y);
    a=0; s=0; #10;
    

    a = $random;
    for (i=0; i<16; i++) begin
        s=i; #10;
    end
end
endmodule
