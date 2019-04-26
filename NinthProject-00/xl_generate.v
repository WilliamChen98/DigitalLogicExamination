module xl_generate(clk,clr,ing,dout);
	input clk,clr;
	input [7:0]ing;
	output reg dout;
	reg [7:0]data;
	always @ (posedge clk)begin
		if(!clr)begin
			dout = 1'd0;
			data = ing;
		end
		else begin
			dout <= data[7];
			data <= {data[6:0],data[7]};
		end
	end
endmodule
