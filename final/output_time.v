module output_time(x,y);
	input [3:0]x;
	output [7:0]y;
	reg [7:0]y;
		always @(x)
			case(x)
				4'b0000:y=8'b11111100;
				4'b0001:y=8'b01100000;
				4'b0010:y=8'b11011010;
				4'b0011:y=8'b11110010;
				4'b0100:y=8'b01100110;
				4'b0101:y=8'b10110110;
				4'b0110:y=8'b10111110;
				4'b0111:y=8'b11100000;
				4'b1000:y=8'b11111110;
				4'b1001:y=8'b11110110;
				4'b1010:y=8'b00000010;
				default:y=8'b10011110;
			endcase
endmodule