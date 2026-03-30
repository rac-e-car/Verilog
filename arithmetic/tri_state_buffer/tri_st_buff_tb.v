module tri_st_buff_tb;

reg i,e;
wire o;

tri_st_buff dut (.i(i), .e(e), .o(o));

initial begin
    $dumpfile ("tri_buff.vcd");
    $dumpvars (0, tri_st_buff_tb);

    $monitor ("At time t=%0t -- | i = %b, e = %b | o = %b", $time, i,e,o);

    i=0; e=0; #10;
    i=1; e=0; #10;
    i=0; e=1; #10;
    i=1; e=1; #10;
end
endmodule
