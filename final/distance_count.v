module distance_count(clk,start,reset,distance,en,double);
input clk,start,reset;  
output reg[11:0] distance;
output reg en,double;
always@(posedge clk )
begin
	if(!reset)
		distance<=12'd0;
	else if(start)
	begin
		if(distance[3:0]==9)begin
			distance[3:0]<=4'd0;
			if(distance[7:4]==9) begin
				distance[7:4]<=4'd0;
				if(distance[11:8]==9)
					distance[11:8]<=4'd0;
				else 
					distance[11:8]<= distance[11:8]+1'd1; 
			end
			else
				distance[7:4]<= distance[7:4]+1'd1; 		
		end
	   else	
			distance[3:0]<= distance[3:0]+1'd1; 
	end
end
always@(posedge clk )begin
	if(!reset)
		en<=1'b0;
	else begin 
		if((distance[3:0]>4'd3)||(distance[7:4]>4'd0)||(distance[11:8]>4'd0))
			en<=1'b1;
		if(((distance[3:0]>4'd4)&&(distance[7:4]>4'd0))||(distance[11:8]>4'd0)||(distance[7:4]>4'd0))
			double<=1'b1;
	end
end
endmodule

