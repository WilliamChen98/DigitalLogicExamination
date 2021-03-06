module Chooser(inc,selc,outc);
	input [3:0]inc;
	input[1:0]selc;
	output reg outc;
	always @ (selc or inc)
		case(selc)
			2'd0:outc = inc[0];
			2'd1:outc = inc[1];
			2'd2:outc = inc[2];
			2'd3:outc = inc[3];
			default:outc = inc[0];
		endcase
endmodule