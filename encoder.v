module encoder(
     input [3:0]d,
	  output a,
	  output b
);
assign a=d[2]|d[3];
assign b=d[1]|d[3];
endmodule