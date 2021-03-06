module scanner(clk,data_out,sel_dig,distance,m,s,expense);
input clk;
input [11:0]distance;
input [7:0]expense;
input [7:0]s;
input [3:0]m;
output reg [3:0]data_out;
output reg [7:0]sel_dig;
reg [2:0]i;
always @(posedge clk)begin
	i<=i+3'd1;
	case(i)
		3'd0:begin data_out<=expense[3:0];  sel_dig<=8'b11111110; end
		3'd1:begin data_out<=expense[7:4];  sel_dig<=8'b11111101; end
		3'd2:begin data_out<=distance[3:0]; sel_dig<=8'b11111011; end
		3'd3:begin data_out<=distance[7:4]; sel_dig<=8'b11110111; end
		3'd4:begin data_out<=distance[11:8];sel_dig<=8'b11101111; end
		3'd5:begin data_out<=s[3:0];        sel_dig<=8'b11011111; end
		3'd6:begin data_out<=s[7:4];        sel_dig<=8'b10111111; end
		3'd7:begin data_out<=m[3:0];        sel_dig<=8'b01111111; end
	endcase
end
endmodule
