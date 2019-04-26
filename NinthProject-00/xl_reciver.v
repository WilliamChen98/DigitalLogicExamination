module xl_reciver(clk,check,flag);
	input clk,check;
	output reg flag;
	 reg [7:0] c_state;
	 reg [7:0] n_state;
	parameter 	S0 = 8'b0000_0000,S1 = 8'b0000_1111,S2 = 8'b0010_0000,S3 = 8'b0010_1111,
					S4 = 8'b0010_0101,S5 = 8'b0010_0001,S6 = 8'b0010_0011,S7 = 8'b0010_0010,
					S8 = 8'b1111_1111;
	always @ (posedge clk)begin
		case(c_state)
			S7:flag = 1'b1;
			default: flag = 1'b0;
		endcase
	end
	
	always @ (posedge clk)begin
		c_state <= n_state;
	end
	
	always @ (c_state or check)begin
		case(c_state)
			S0:if(~check)	n_state <= S1;else n_state <= S8;
			S1:if(check)	n_state <= S2;else n_state <= S1;
			S2:if(~check)	n_state <= S3;else n_state <= S8;
			S3:if(~check)	n_state <= S4;else n_state <= S8;
			S4:if(~check)	n_state <= S5;else n_state <= S2;
			S5:if(check)	n_state <= S6;else n_state <= S1;
			S6:if(~check)	n_state <= S7;else n_state <= S8;
			S7:if(check)	n_state <= S8;else n_state <= S1;
			S8:if(~check)	n_state <= S0;else n_state <= S8;
			default:n_state <= S8;
			endcase
	end
endmodule
