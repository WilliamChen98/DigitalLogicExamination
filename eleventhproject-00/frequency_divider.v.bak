module frequency_divider(clk_50mhz,rst,clk_1khz,clk_100hz,clk_10hz,clk_1hz);
	input clk_50mhz,rst;
	output reg clk_1khz,clk_100hz,clk_10hz,clk_1hz;
	reg[31:0]cnt1,cnt2,cnt3,cnt4;
	parameter N4 = 50000,N3 = 500000,N2 = 5000000,N1 = 50000000;//实际操作时使用的数据
	//parameter N4 = 2,N3 = 4,N2 = 8,N1 = 16;//仿真时使用的数据
	always @ (posedge clk_50mhz)
		if(rst)begin
				cnt1 <= 1'b0;
				cnt2 <= 1'b0;
				cnt3 <= 1'b0;
				cnt4 <= 1'b0;
				clk_1khz <= 1'b0;
				clk_100hz <= 1'b0;
				clk_10hz <= 1'b0;
				clk_1hz <= 1'b0;
			end
		else if(1)begin
				cnt1 <= cnt1 + 1'b1;
				cnt2 <= cnt2 + 1'b1;
				cnt3 <= cnt3 + 1'b1;
				cnt4 <= cnt4 + 1'b1;
				clk_1khz <= clk_1khz;
				clk_100hz <= clk_100hz;
				clk_10hz <= clk_10hz;
				clk_1hz <= clk_1hz;
				if(cnt4 >= N4/2-1)begin
					cnt4 <= 1'b0;
					clk_1khz <= ~clk_1khz;
					end
				if(cnt3 >= N3/2-1)begin
					cnt3 <= 1'b0;
					clk_100hz <= ~clk_100hz;
					end
				if(cnt2 >= N2/2-1)begin
					cnt2 <= 1'b0;
					clk_10hz <= ~clk_10hz;
					end
				if(cnt1 >= N1/2-1)begin
					cnt1 <= 1'b0;
					clk_1hz <= ~clk_1hz;
					end
			end
endmodule