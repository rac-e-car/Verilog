module mux4x1tb;

reg [3:0] a;
reg [1:0] s;
wire y;
integer i;

mux4x1 dut (.a(a), .s(s),.y(y));

initial begin
    $dumpfile ("4x1mux.vcd");
    $dumpvars (0, mux4x1tb);

    $monitor ("At time t=%0t --| a=%b, s=%b | y=%b", $time, a,s,y);

    a=0; s=0; #10;
    
    repeat(3) begin
    a = $random; #10;
    for (i=0;i<4;i=i+1) begin 
        s = i; 
    #10;
    end
    end
end
endmodule

