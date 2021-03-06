module BCD(binary,hund,ten,one);
	input [9:0]binary;
	output reg [3:0]hund,ten,one;
	integer i;
	always @(binary)begin
		hund = 4'd0;
		ten = 4'd0;
		one = 4'd0;
		
		for(i=9;i>=0;i=i-1)begin
			if(hund>=4'd5)	hund=hund+4'd3;
			if(ten>=4'd5)	ten=ten+4'd3;
			if(one>=4'd5)	one=one+4'd3;
			
			hund=hund<<1;
			hund[0]=ten[3];
			ten=ten<<1;
			ten[0]=one[3];
			one=one<<1;
			one[0]=binary[i];
		end
	end
endmodule
