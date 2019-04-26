module chooser_dis(clkc,in_dis,in_p,outc);
	input [11:0] in_dis,in_p;
	input clkc;
	output reg [3:0] outc;
	parameter S0 = 4'd10,S1 = 4'd11;
	reg [2:0] state;
	always @ (posedge clkc)begin
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
	end
	always @ (posedge clkc)begin
		case(state)
			4'd7: outc = in_p[11:8];
			4'd6: outc = in_p[7:4];
			4'd5: outc = in_p[3:0];
			4'd4: outc = S1;
			4'd3: outc = S1;
			4'd2: outc = in_dis[11:8];
			4'd1: outc = in_dis[7:4];
			4'd0: outc = in_dis[3:0];
			default:outc = S1;
		endcase
	end
endmodule
