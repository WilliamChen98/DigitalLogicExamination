module void_shake(inv,rstv,clk,outv);
	input inv,clk,rstv;
	output reg outv;
	reg k1,k2,flag;
	reg [4:0] count = 0;
	
	always @ (posedge clk)begin
		if(inv)begin
			k1 <= inv;
			
		end
		else begin
			count <= count;
		end
	end
endmodule