module fulladder(
     input a,
	  input b,
	  input c,
	  input s,
	  input cout
);
assign s=a^b^c;
assign cout=a&b|c&(a^b);
endmodule

module ripplecarryadder(
          input a[3:0],
			 input b[3:0], 
			 input cin,
			 output cout,
			 output s[3:0]
);
wire c1,c2,c3;
fulladder FA1(
       .a(a[0]),
		 .b(b[0]),
		 .cin,
		 .s(s[0]),
		 .cout(c1)
);
fulladder FA2(
        .a(a[1]),
		  .b(b[1]),
		  .cin(c1),
		  .s(s[1]),
		  .cout(c2)
);
fulladder FA3(
        .a(a[2]),
		  .b(b[2]),
		  .cin(c2),
		  .s(s[2]),
		  .cout(c3)
);
fulladder FA4(
        .a(a[3]),
		  .b(b[3]),
		  .cin(c3),
		  .s(s[3]),
		  .cout(cout)
);
endmodule
			
		
		 

