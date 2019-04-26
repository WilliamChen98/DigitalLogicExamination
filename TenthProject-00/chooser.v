module chooser(clkc,sel,clr,outc);
	input clkc,sel,clr;
	output reg [7:0] outc;
	parameter S0 = 8'b11111100,S1 = 8'b01100000,S2 = 8'b11011010,S3 = 8'b11110010,
				 S4 = 8'b01100110,S5 = 8'b10110110,S6 = 8'b10111110,S7 = 8'b11100000,
				 S8 = 8'b11111110,S9 = 8'b11110110,S10 = 8'b10011110,S11 = 8'b00000000;
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
		if(clr)begin
			outc = S11;
		end
		if(sel)begin
			case(state)
				4'd7: outc = S1;
				4'd6: outc = S6;
				4'd5: outc = S0;
				4'd4: outc = S7;
				4'd3: outc = S1;
				4'd2: outc = S0;
				4'd1: outc = S1;
				4'd0: outc = S7;
				default:outc = S11;
			endcase
		end
		else begin
			case(state)
				4'd7: outc = S1;
				4'd6: outc = S6;
				4'd5: outc = S0;
				4'd4: outc = S7;
				4'd3: outc = S1;
				4'd2: outc = S0;
				4'd1: outc = S0;
				4'd0: outc = S5;
				default:outc = S11;
			endcase
		end
	end
endmodule