module switch_and (input a,b, output y);

supply1 vdd;
supply0 gnd;

wire btw;//and
nmos (y, btw, a);
nmos (btw, vdd, b);

wire com; //or
pmos (com, vdd, a);
pmos (y, com, b);

endmodule
