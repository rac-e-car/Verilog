module mux_2x1_tb;

reg a,b,s;
wire y_ga;
wire y_da;
wire y_be;


mux_all dut (.a(a),.b(b),.s(s),.y_ga(y_ga),.y_da(y_da),.y_be(y_be));

initial begin
    $dumpfile ("mux_2x1.vcd");
    $dumpvars (0, mux_2x1_tb);

    $monitor("time t=%0t, a=%b, b=%b, s=%b | y_ga=%b,y_da=%b,y_be=%b", $time,a,b,s,y_ga,y_da,y_be);
    
    repeat(8) begin
    a = $random; #10;
    b = $random; #10;
    s = $random; #10;
end
end
endmodule
