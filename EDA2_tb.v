`timescale 10ns/1ns 
module EDA2_tb;
	reg clk;
	reg [3:0] C;
	wire [3:0] R;
	wire [6:0] disp;
	wire [3:0] scan;
	
	EDA2 dut(.clk(clk), .C(R), .disp(disp), .R(C), .scan(scan));

	always
		#5 clk = ~clk;//每50ns翻转，周期100ns

	initial
	begin
		clk = 1'b0; //t = 0
		C = 4'hF;
		//按下开始
		#80 C = 4'b1101;
		#80 C = 4'b1111;
		
		//按下4
		#80 C = 4'b1110;
		#80 C = 4'b1111;
		
		//按下9
		#80 C = 4'b1011;
		#80 C = 4'b1111;
		
		//按下清零
		#80 C = 4'b1011;
		#80 C = 4'b1111;
		
		//按下1
		#80 C = 4'b1110;
		#80 C = 4'b1111;
		
		//按下2
		#80 C = 4'b1101;
		#80 C = 4'b1111;
		
		//按下confirm
		#80 C = 4'b0111;
		#80 C = 4'b1111;

		#800
		
		//按下5
		#80 C = 4'b1101;
		#40 C = 4'b1111;
		#80 C = 4'b1101;
		#80 C = 4'b1111;
		
		//按下清零
		#80 C = 4'b1011;
		#40 C = 4'b1011;
		#40 C = 4'b1011;
		
		#200
		$finish;
	end
	
endmodule
