module scaner_time(clks,outs);
	input clks;
	output reg [7:0] outs;
	reg [2:0] state;
	always @ (posedge clks)
		case(state)
			4'd0: state <= 1;
			4'd1: state <= 2;
			4'd2: state <= 3;
			4'd3: state <= 4;
			4'd4: state <= 5;
			4'd5: state <= 6;
			4'd6: state <= 7;
			4'd7: state <= 0;
			default:state <= 0;
		endcase
	
	always @ (posedge clks)
		case(state)
			4'd0: outs = 8'b11111110;
			4'd1: outs = 8'b11111101;
			4'd2: outs = 8'b11111011;
			4'd3: outs = 8'b11110111;
			4'd4: outs = 8'b11101111;
			4'd5: outs = 8'b11011111;
			4'd6: outs = 8'b10111111;
			4'd7: outs = 8'b01111111;
			default:outs = 8'd255;
		endcase
endmodule
