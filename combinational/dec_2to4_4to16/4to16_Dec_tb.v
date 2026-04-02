module decoder_4to16_tb;

reg [3:0]a;
reg en;
output [15:0] out;
integer i;

decoder_4to16 dut(.a(a), .en(en), .out(out));

initial begin
    $dumpfile("4to6dec.vcd");
    $dumpvars(0, decoder_4to16_tb);

    $monitor ("At time = %0t -- | a=%b, en=%b | out = %b", $time, a,en,out);
    /*a=00; en=0; #10;
    a=01; en=1; #10;
    a=10; en=1; #10;
    a=11; en=1; #10;*/
    
   en = 1;
   
   for(i=0;i<16;i=i+1) begin
   
    a = i; #10;
      

end
$finish;
end
endmodule
