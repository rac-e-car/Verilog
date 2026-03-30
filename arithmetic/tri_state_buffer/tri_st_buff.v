module tri_st_buff (input i,e, output o);

assign o = e ? i : 1'bz;

endmodule
