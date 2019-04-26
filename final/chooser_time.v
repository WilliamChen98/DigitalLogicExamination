module chooser_time(clkc,in_ms,in_s,in_min,outc);
	input [7:0] in_ms,in_s,in_min;
	input clkc;
	output reg [3:0] outc;
	parameter S0 = 4'd10,S1 = 4'd11,S2 = 4'd12;
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
			4'd7: outc = in_min[7:4];
			4'd6: outc = in_min[3:0];
			4'd5: outc = S0;
			4'd4: outc = in_s[7:4];
			4'd3: outc = in_s[3:0];
			4'd2: outc = S0;
			4'd1: outc = in_ms[7:4];
			4'd0: outc = in_ms[3:0];
			default:outc = S2;
		endcase
	end
endmodule
