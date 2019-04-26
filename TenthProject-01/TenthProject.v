module TenthProject(clk,rst,out_sel,out_num);
	input clk,rst;
	output [7:0] out_sel;
	output [7:0] out_num;
	wire H1k,H100,H10,H1,num,cnt_ms,cnt_s,cnt_min;
	frequency_divider F1 (clk,rst,H1k,H100,H10,H1);
	scaner S1 (H1k,out_sel);
	counter C1 (H1k,cnt_ms,cnt_s,cnt_min);
	chooser C2 (H1k,cnt_ms,cnt_s,cnt_min,num);
	Second Sec (num,out_num);
endmodule
