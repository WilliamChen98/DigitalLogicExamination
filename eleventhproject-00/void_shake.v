module void_shake(inv,rstv,clk,outv);
	input inv,clk,rstv;
	output reg outv;
	reg k1,k2,flag;
	reg [4:0] count;
	
	always @ (posedge clk)begin
		if(rstv == 0)begin
			k1 <= 0;
			k2 <= 0;
		end
		else begin
			k1 <= inv;
			k2 <= k1;
		end
	end
	
	always @ (posedge clk)begin
		if(rstv == 1)begin
			flag <= k1 ^ k2;
			if(flag == 1)begin
				count <= count + 5'd1;
				if(count == 5'd20) outv <= inv;
			end
			if(flag == 0 && count != 0)begin
				count <= count + 5'd1;
				if(count == 5'd20) outv <= inv;
			end
		end	
	end
endmodule