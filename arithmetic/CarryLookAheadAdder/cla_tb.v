`timescale 1ns/1ps

module cla_tb;

reg [3:0] a,b;
reg cin;
wire [3:0] sum;
wire cout;
integer i;

cla uut (.a(a), .b(b), .cin(cin), .sum(sum), .cout(cout));

initial begin
    $dumpfile("cla.vcd");
    $dumpvars(0,cla_tb);

    $monitor ("At time t=%0t -- | a=%b, b=%b, cin=%b | sum=%b, cout-%b", $time, a,b,cin,sum,cout);

    a=0; b=0; cin=0; #10

    for (i=0; i<10; i=i+1) begin
    a = $urandom_range(0,15);
    b = $urandom_range(0,15);
    cin = $urandom_range(0,1);

    #10;
end
end
endmodule
