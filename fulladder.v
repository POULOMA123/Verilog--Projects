module fulladder(
     input a,
	  input b,
	  input c,
	  input s,
	  input cout
);
assign s=a^b^c;
assign cout=a&b|c&(a^b);