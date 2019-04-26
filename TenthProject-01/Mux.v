module Mux(in1,in2,sel,outm);
	intput[3:0] in1,in2;
	output[3:0]outm;
	always @ (sel)
	if(sel)	outm = in2;
	else		outm = in1;
endmodule