	module piso (input [3:0] din, input clk, reset,load, output dout);

reg [3:0] q;

always @(posedge clk, negedge reset) begin
    if (!reset)
        q <= 4'b0;
       
    else if(load)

        q<= din;
        
    else
        q<=(q>>1);  

    end
    assign dout = q[0];
    endmodule
 
        


