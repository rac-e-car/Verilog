module switch_inv (input i, output o);

pmos (o, 1'b1, i);
nmos (o, 1'b0, i);

endmodule
