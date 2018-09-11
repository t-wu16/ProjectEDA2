`timescale 100ns/1ns
module keyboard_tb;
	reg clk;
	reg [3:0] R;
	wire [3:0] C;
	wire [3:0] key;
	keyboard dut(.clk(clk),.R(R),.C(C),.key(key));
	
	always
		#1 clk = ~clk;	//每100ns翻转，周期200ns
		
	initial		//输入模块
	begin
		clk = 1'b0;
		R = 4'hF;
		
		//按下0
		#4 R = 4'b1110;
		#4 R = 4'b1111;
				
		//按下开始
		#4 R = 4'b1101;
		#4 R = 4'b1111;
			
		//按下清零
		#4 R = 4'b1011;
		#4 R = 4'b1111;
		
		//按下确认
		#4 R = 4'b0111;
		#4 R = 4'b1111;

		#10
		$finish;
	end
endmodule