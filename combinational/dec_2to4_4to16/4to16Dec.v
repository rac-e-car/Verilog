module decoder_2to4(input [1:0] a,input en, output [3:0] out);

assign out = (en)? 4'b1<<a : 4'b0000;
endmodule


module decoder_4to16(input [3:0] a,input en, output [15:0] out);
wire [3:0] en_wire;

decoder_2to4 master (.a(a[3:2]),.out(en_wire),.en(en));

decoder_2to4 slave1 (.a(a[1:0]),.en(en_wire[0]),.out(out[3:0]));
decoder_2to4 slave2 (.a(a[1:0]),.en(en_wire[1]),.out(out[7:4]));
decoder_2to4 slave3 (.a(a[1:0]),.en(en_wire[2]),.out(out[11:8]));
decoder_2to4 slave4 (.a(a[1:0]),.en(en_wire[3]),.out(out[15:12]));

endmodule
