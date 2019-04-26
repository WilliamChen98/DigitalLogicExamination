module move_reg(clkm,DinR,DinL,Dout0,Dout1,Dout2,Dout3,Dout4,Dout5,Dout6,Dout7);
	input clkm;
	input [3:0]DinL,DinR;
	output reg[3:0]Dout0,Dout1,Dout2,Dout3,Dout4,Dout5,Dout6,Dout7;
	always @ (posedge clkm)begin
		Dout0 <= Dout1;
		Dout1 <= Dout2;
		Dout2 <= Dout3;
		Dout3 <= Dout4;
		Dout4 <= Dout5;
		Dout5 <= Dout6;
		Dout6 <= Dout7;
		Dout7 <= DinL;
	end
endmodule