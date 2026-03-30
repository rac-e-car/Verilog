module comparator_sb_tb;

reg a,b;
wire eq, gt, lq;

comparator_sb dut (.a(a),
			.b(b),
			.eq(eq),
			.gt(gt),
			.lt(lt));

        initial begin
            $dumpfile("comparator_sb.vcd");
            $dumpvars(0,comparator_sb_tb);
        end

        initial begin
            $monitor ("At time t=%0t, a=%b. b=%b | eq=%b, gt=%b, lt=%b", $time, a,b,eq,gt,lt);

            a= 0; b=0; #10;
            a= 0; b=1; #10;
            a=1; b=0; #10;
            a=1; b=1; #10;
            $finish;
        end
endmodule




