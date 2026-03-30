module comparator_sb (input a,b, output eq, gt, lt);

not(w1,b);
not(w2,a);

xnor (eq,a,b);
and (gt,a,w1);
and (lt,b,w2);


endmodule



