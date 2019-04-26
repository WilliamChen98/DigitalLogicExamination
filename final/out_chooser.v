module out_chooser(clk_o,in_t,in_dp,out_c);
	input [3:0] in_t,in_dp;
	input clk_o;
	output reg [3:0]out_c;
	reg [1:0]count;
	reg state;
	always @ (posedge clk_o)begin
		count <= count + 2'd1;
		if(count == 2'd3)begin
			state <= state + 1'd1;
		end
	end
	
	always @ (state or in_dp or in_t)begin
		case(state)
			2'd0:out_c = in_dp;
			2'd1:out_c = in_t;
			default:out_c = in_dp;
		endcase
	end
endmodule

