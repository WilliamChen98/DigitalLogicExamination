module Counter_2421_16071005(clk,Q,z);
	input clk;
	output reg [3:0]Q;
	output reg z;
	always @ (posedge clk)begin
		if(Q == 4'b1111)begin
			z <= 1'd1;
		end
		case(Q)
			4'b0000: Q <= 4'b0001;
			4'b0001: Q <= 4'b0010;
			4'b0010: Q <= 4'b0011;
			4'b0011: Q <= 4'b0100;
			4'b0100: Q <= 4'b1011;
			4'b1011: Q <= 4'b1100;
			4'b1100: Q <= 4'b1101;
			4'b1101: Q <= 4'b1110;
			4'b1110: Q <= 4'b1111;
			4'b1111: Q <= 4'b0000;
			default: Q <= 4'd0000;
		endcase
	end
endmodule