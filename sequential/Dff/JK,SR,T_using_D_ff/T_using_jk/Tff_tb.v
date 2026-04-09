module Tff_tb;

reg t,clk;
wire q,qbar;

Tff dut (.t(t), .clk(clk), .q(q), .qbar(qbar));
always #5 clk=~clk;

initial begin
    $dumpfile("Tff.vcd");
    $dumpvars(0,Tff_tb);

    $monitor("At time=%ot-->| clk=%b, t=%b | q=%b, qbar=%b",$time,clk,t,q,qbar);
    clk=0; t=0; 

    t=0; #10;
    t=1; #20
    t=0; #10;

    $finish;
end
endmodule
