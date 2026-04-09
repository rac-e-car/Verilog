module Tff (input t,clk, output q, qbar);

jk jkt (.j(t),.k(t),  //connecting t to both j and k ports cuz at the same value, jk mimics t ff.
    .clk(clk),
    .q(q),
    .qbar(qbar));

endmodule
