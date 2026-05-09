module halfadderdataflow(
   input a,
   input b,
   output s,
   output carry);
assign s=a^b;
assign carry=a&b;
endmodule