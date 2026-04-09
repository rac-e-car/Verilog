module jk_tb;

reg j,k,d,clk;
wire q,qbar;
integer i;

jk dut (.j(j), .k(k), .clk(clk), .q(q), .qbar(qbar));
always #5 clk=~clk;

initial begin 
    $dumpfile ("jk.vcd");
    $dumpvars (0, jk_tb);

    $monitor ("At time=%0t-->| clk=%b, j=%b, k=%b | q=%b, qbar=%b", $time,clk,j,k,q,qbar);
    clk=0; j=0;k=0;d=0;

    for(i=0; i<4; i=i+1) begin
        {j,k} = i; #10;
    end

$finish;
end
endmodule
