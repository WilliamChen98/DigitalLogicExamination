module price_count(t_min,dis,reset,finish,stop,clk,price);
	input [11:0]dis;
	input [7:0]t_min;
	input reset,finish,clk,stop;
	output reg[9:0]price;
	reg sum,flag;
	always @ (posedge clk)begin
		if(finish)begin
			price <= price;
		end
		else if(reset)begin
			price <= 8'd13;
		end
		else if(~stop)begin
			price <= price + sum;
			sum <= 1'd0;
		end
		else begin
			case(dis[7:0])
				8'h00:price <= 8'd13;
				8'h01:price <= 8'd13;
				8'h02:price <= 8'd13;
				8'h03:price <= 8'd13;
				8'h04:price <= price + 8'd2;
				8'h05:price <= price + 8'd2;
				8'h06:price <= price + 8'd2;
				8'h07:price <= price + 8'd2;
				8'h08:price <= price + 8'd2;
				8'h09:price <= price + 8'd2;
				8'h10:price <= price + 8'd2;
				8'h11:price <= price + 8'd2;
				8'h12:price <= price + 8'd2;
				8'h13:price <= price + 8'd2;
				8'h14:price <= price + 8'd2;
				8'h15:price <= price + 8'd2;
				default:price <= price + 8'd3;
			endcase
			end
		case(t_min)
			8'h02:begin 
				if(~flag)begin 
					sum <= 1'd1; flag <= 1'd1;
				end
				else begin sum <= 1'd0;end
			end
			8'h10:begin 
				if(~flag)begin 
					sum <= 1'd1; flag <= 1'd1;
				end
				else begin sum <= 1'd0;end
			end
			8'h15:begin 
				if(~flag)begin 
					sum <= 1'd1; flag <= 1'd1;
				end
				else begin sum <= 1'd0;end
			end
			8'h20:begin 
				if(~flag)begin 
					sum <= 1'd1; flag <= 1'd1;
				end
				else begin sum <= 1'd0;end
			end
			8'h25:begin 
				if(~flag)begin 
					sum <= 1'd1; flag <= 1'd1;
				end
				else begin sum <= 1'd0;end
			end
			8'h30:begin 
				if(~flag)begin 
					sum <= 1'd1; flag <= 1'd1;
				end
				else begin sum <= 1'd0;end
			end
			8'h35:begin 
				if(~flag)begin 
					sum <= 1'd1; flag <= 1'd1;
				end
				else begin sum <= 1'd0;end
			end
			8'h40:begin 
				if(~flag)begin 
					sum <= 1'd1; flag <= 1'd1;
				end
				else begin sum <= 1'd0;end
			end
			8'h45:begin 
				if(~flag)begin 
					sum <= 1'd1; flag <= 1'd1;
				end
				else begin sum <= 1'd0;end
			end
			default:begin sum <= 1'd0; flag <= 1'd0;end
		endcase
	end
endmodule
