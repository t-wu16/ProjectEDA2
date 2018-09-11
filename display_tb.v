`timescale 100ns/1ns
module display_tb;
	reg clk;
	reg [3:0] dig0,dig1,dig2,dig3;
	wire [3:0] scan;
	wire [6:0] disp;
	display dut(.clk(clk),.dig0(dig0),.dig1(dig1),.dig2(dig2),.dig3(dig3),.scan(scan),.disp(disp));
	
	always 
		#1 clk = ~clk;
		
	initial
	begin
		clk = 1'b0;
		
		#1 dig0 = 4'b0000;
		#4 dig1 = 4'b0001;
		#4 dig2 = 4'b0010;
		#4 dig3 = 4'b0011;
		#4 dig0 = 4'b0100;
		#4 dig1 = 4'b0101;
		#4 dig2 = 4'b0110;
		#4 dig3 = 4'b0111;
		#4 dig0 = 4'b1000;
		#4 dig1 = 4'b1001;
		#4 dig2 = 4'b1010;
		#4 dig3 = 4'b1011;
		
		#10
		$finish;
	end
endmodule
		
		
		