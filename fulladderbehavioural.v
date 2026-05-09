module fulladderbehavioural(
    input a,
	 input b,
	 input c,
	 output reg s,
	 output reg cout
);
always @(*) begin
	 if (a==0&b==0&c==1) begin
	    cout=0;
	    s=1;
	 end
	 else if(a==0&b==1&c==0) begin
	    cout=0;
	    s=1;
	 end
	 else if(a==0&b==1&c==1) begin
	    cout=1;
	    s=0;
	 end
	 else if(a==1&b==0&c==0) begin
	    cout=0;
	    s=1;
	 end
	 else if(a==1&b==0&c==1) begin
	    cout=1;
	    s=0;
	 end
	 else if(a==1&b==1&c==0) begin
	    cout=1;
	    s=0;
	 end
	 else if(a==1&b==1&c==1) begin
	    cout=1;
	    s=1;
	 end
	 else begin
	    s=0;
	    cout=0;
	 end
end
endmodule