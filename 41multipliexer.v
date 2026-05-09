module 41multipliexer(
       input I[3:0],
		 input S[1:0],
		 output y
);
assign y=((~S0)&(~S1)&(I0))|(~S0)&(S1)&(I1)|(S0)&(~S1)&(I2)|(S0)&(S1)&(I3);
endmodule