module Decoder(in,out);
	input [2:0] in;
	output [7:0] out;
	reg [7:0] out;
	parameter S0 = 0,S1 = 1,S2 = 2,S3 = 3,S4 = 4,S5 = 5,S6 = 6,S7 = 7;
		always @ (in) begin
			case(in)
				S0: out = 8'd254;//8'b11111110
				S1: out = 8'd253;
				S2: out = 8'd251;
				S3: out = 8'd247;
				S4: out = 8'd239;
				S5: out = 8'd223;
				S6: out = 8'd191;
				S7: out = 8'd127;
				default: out = 16'd255;
			endcase
		end
endmodule
