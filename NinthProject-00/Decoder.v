module Decoder(ind,outd);
	input ind;
	output reg[3:0]outd;
	always @ (ind)begin
		if(ind)	outd = 4'b0001;
		else		outd = 4'd0;
	end
endmodule