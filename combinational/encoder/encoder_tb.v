module encoder_tb;

reg [7:0] d;
wire [2:0] a;

encoder #(.N(8)) dut (.d(d), .a(a));

initial begin 
    $dumpfile("encoder.vcd");
    $dumpvars(0, encoder_tb);

    $monitor ("At time =%0t --> | d=%b | a=%b", $time, d,a);

            repeat (8) begin
            d = $random; #10;
            end
        end
        endmodule    
