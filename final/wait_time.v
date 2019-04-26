module wait_time(clk,reset,stop,s,m,flag);
input clk,reset,stop; 
output reg  [7:0]s;
output reg  [3:0]m;
output reg flag;
always @(posedge clk)begin
	if(!reset) begin
		s<=8'd0;
		m<=4'd0;
	end
	else if(stop) begin
		if(s[3:0]==9)begin
			s[3:0]<=4'd0;
			if(s[7:4]==5)begin
				s[7:4]<=4'd0;
				if(m[3:0]==9)begin
					m[3:0]<=4'd0;
				end
				else m[3:0]<=m[3:0]+4'd1;
			end
			else s[7:4]<=s[7:4]+4'd1;
	   end
	   else s[3:0]<=s[3:0]+4'd1;
	end
end
always @(posedge clk)begin
	if((m[3:0]>4'd4)&&(s[7:0]==8'd0))
		flag<=1'd1;
		
end
endmodule



	