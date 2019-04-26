module md_sel(inmd,outmd);
	input[3:0]inmd;
	output reg[1:0]outmd;
	always @ (inmd)
		case(inmd)
			4'd10:outmd = 2'b10;
			4'd11:outmd = 2'b00;
			default:outmd = 2'b01;
		endcase
endmodule