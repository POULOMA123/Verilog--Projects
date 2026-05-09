

module threebitcomparator(
     input [3:0]a,
	  input [3:0]b,
	  output greater,
	  output equal,
	  output lesser
);
assign greater=((a[3] ^ b[3]) & (a[2] ^ b[2]) & (a[1] ^ b[1]) & (a[0] & ~b[0]))|
               ((a[3] ^ b[3]) & (a[2] ^ b[2]) & (a[1] & ~b[1]))|
				   ((a[3] ^ b[3]) & (a[2] & ~b[2]))|
					(a[3] & ~b[3]);
assign equal=(a[3] ^ b[3]) & (a[2] ^ b[2]) & (a[1] ^ b[1]) & (a[0] ^ b[0]);
assign lesser=((a[3] ^ b[3]) & (a[2] ^ b[2]) & (a[1] ^ b[1]) & (~a[0] & b[0]))|
              ((a[3] ^ b[3]) & (a[2] ^ b[2]) & (~a[1] & b[1]))|
				   ((a[3] ^ b[3]) & (~a[2] & b[2]))|
					(~a[3] & b[3]);
endmodule