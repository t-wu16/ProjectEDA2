module display(clk,dig3,dig2,dig1,dig0,scan,disp);
	input clk;
	input[3:0] dig3,dig2,dig1,dig0;
	output reg [3:0] scan;
	output reg [6:0] disp;
	
	//分频
	reg [17:0]count;
	always @ (posedge clk)
		count <= count + 1'b1;
	wire disp_clk = count[17];
	
	reg [3:0] data;
	//定义状态
	reg [1:0] current_state,next_state;
	parameter DISP3 = 3, DISP2 = 2, DISP1 = 1, DISP0 = 0;
	
	always@ (posedge disp_clk) //状态方程
		current_state <= next_state;
	
	always@ (current_state)		//驱动方程（循环扫描）
		case(current_state)
			DISP3: next_state <= DISP2;
			DISP2: next_state <= DISP1;
			DISP1: next_state <= DISP0;
			DISP0: next_state <= DISP3;
		endcase
		
	always@ (current_state)		//输出方程，数码管选通
		case(current_state)
			DISP3: scan <= 4'b1000;
			DISP2: scan <= 4'b0100;
			DISP1: scan <= 4'b0010;
			DISP0: scan <= 4'b0001;
		endcase
		
	always@ (current_state)		//输出方程，数据选择
		case(current_state)
			DISP3: data <= dig3;
			DISP2: data <= dig2;
			DISP1: data <= dig1;
			DISP0: data <= dig0;
		endcase
	
	always@ (data)		//译码
		case(data)
			4'b0000: disp <= 7'b0111111;
			4'b0001: disp <= 7'b0000110;
			4'b0010: disp <= 7'b1011011;
			4'b0011: disp <= 7'b1001111;
			4'b0100: disp <= 7'b1100110;
			4'b0101: disp <= 7'b1101101;
			4'b0110: disp <= 7'b1111100;
			4'b0111: disp <= 7'b0000111;
			4'b1000: disp <= 7'b1111111;
			4'b1001: disp <= 7'b1100111;
			4'b1101: disp <= 7'b0000000;
			default: disp <= 7'b0111111;
		endcase
endmodule
