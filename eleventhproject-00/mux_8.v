module mux_8(in0,in1,in2,in3,in4,in5,in6,in7,clk,outm,selmo);
	input clk;
	input [3:0] in0,in1,in2,in3,in4,in5,in6,in7;
	output reg[3:0] outm;
	output reg [7:0]selmo;
	reg [2:0]selm;
	always @ (posedge clk)begin
		selm <= selm + 3'd1;
		case(selm)
			3'd0:begin outm = in0;selmo = 8'b11111110; end
			3'd1:begin outm = in1;selmo = 8'b11111101; end
			3'd2:begin outm = in2;selmo = 8'b11111011; end
			3'd3:begin outm = in3;selmo = 8'b11110111; end
			3'd4:begin outm = in4;selmo = 8'b11101111; end
			3'd5:begin outm = in5;selmo = 8'b11011111; end
			3'd6:begin outm = in6;selmo = 8'b10111111; end
			3'd7:begin outm = in7;selmo = 8'b01111111; end
			default:outm <= outm;
		endcase
	end
endmodule