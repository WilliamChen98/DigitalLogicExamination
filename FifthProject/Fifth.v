module Fifth(clk,reset,out);
	input clk,reset;
	output [2:0] out;
	reg [2:0] out,state;
	parameter S0 = 0,S1 = 1,S2 = 2,S3 = 3,S4 = 4,S5 = 5,S6 = 6,S7 = 7;
		always @ (state) begin
			case(state)
				S0: out = 3'd0;
				S1: out = 3'd1;
				S2: out = 3'd2;
				S3: out = 3'd3;
				S4: out = 3'd4;
				S5: out = 3'd5;
				S6: out = 3'd6;
				S7: out = 3'd7;
				default: out = 4'd0;
			endcase
		end
		//change to the next state
		always @ (posedge clk ) begin
			if(reset)
				state <= S0;
			else
				case(state)
					S0: state <= S1;
					S1: state <= S2;
					S2: state <= S3;
					S3: state <= S4;
					S4: state <= S5;
					S5: state <= S6;
					S6: state <= S7;
					S7: state <= S0;
					default: state <= S0;
				endcase
		end
endmodule