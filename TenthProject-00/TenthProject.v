module TenthProject(clk,sel,rst,clr,out_sel,out_num);
	input clk,sel,rst,clr;
	output [7:0] out_sel;
	output [7:0] out_num;
	wire H1k,H100,H10,H1,num;
	
	frequency_divider F1 (clk,rst,H1k,H100,H10,H1);
	scaner S1 (H1k,out_sel);
	chooser C1 (H1k,sel,clr,out_num);
endmodule
