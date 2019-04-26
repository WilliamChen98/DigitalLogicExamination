module move_reg(clkm,DinR,DinL,Mode,Dout0,Dout1,Dout2,Dout3,Dout4,Dout5,Dout6,Dout7);
	input clkm;
	input [1:0]Mode;
	input [3:0]DinL,DinR;
	output reg[3:0]Dout0,Dout1,Dout2,Dout3,Dout4,Dout5,Dout6,Dout7;
	always @ (posedge clkm)begin
		case(Mode)
			2'b00:begin
				Dout0 <= 4'd10;
				Dout1 <= 4'd10;
				Dout2 <= 4'd10;
				Dout3 <= 4'd10;
				Dout4 <= 4'd10;
				Dout5 <= 4'd10;
				Dout6 <= 4'd10;
				Dout7 <= 4'd10;
			end
			2'b01:begin
				Dout0 <= DinL;
				Dout1 <= Dout0;
				Dout2 <= Dout1;
				Dout3 <= Dout2;
				Dout4 <= Dout3;
				Dout5 <= Dout4;
				Dout6 <= Dout5;
				Dout7 <= Dout6;
			end
			2'b10:begin
				Dout0 <= Dout1;
				Dout1 <= Dout2;
				Dout2 <= Dout3;
				Dout3 <= Dout4;
				Dout4 <= Dout5;
				Dout5 <= Dout6;
				Dout6 <= Dout7;
				Dout7 <= DinR;
			end
			2'b11:begin
				Dout0 <= Dout0;
				Dout1 <= Dout1;
				Dout2 <= Dout2;
				Dout3 <= Dout3;
				Dout4 <= Dout4;
				Dout5 <= Dout5;
				Dout6 <= Dout6;
				Dout7 <= Dout7;
			end
		endcase
	end
endmodule