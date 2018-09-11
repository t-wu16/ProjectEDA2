module keyboard(clk,R,C,key);
	input clk;	//接50MHz的clk信号
	input [3:0]R;			//行输入
	output reg [3:0]C;	//列输出
	output reg [3:0]key;	//按键键值

	//定义状态
	reg [3:0] current_state, next_state;
	parameter NO_KEY_PRESSED = 0, 
		SCAN_COL3 = 1, 
		SCAN_COL2 = 2, 
		SCAN_COL1 = 3, 
		SCAN_COL0 = 4,
		KEY_PRESSED = 5;
	
	always@ (posedge clk) begin	//状态方程
		current_state <= next_state;
	end
	
	always@ (current_state, R)begin	//驱动方程
		case(current_state)
			NO_KEY_PRESSED:
				if(R != 4'hF)
					next_state = SCAN_COL3;
				else
					next_state = NO_KEY_PRESSED;
			SCAN_COL3:
				if(R != 4'hF)
					next_state = KEY_PRESSED;
				else
					next_state = SCAN_COL2;
			SCAN_COL2: 
				if(R != 4'hF)
					next_state = KEY_PRESSED;
				else
					next_state = SCAN_COL1;
			SCAN_COL1:
				if(R != 4'hF)
					next_state = KEY_PRESSED;
				else
					next_state = SCAN_COL0;
			SCAN_COL0:
				if(R != 4'hF)
					next_state = KEY_PRESSED;
				else
					next_state = NO_KEY_PRESSED;
			KEY_PRESSED:
				if(R != 4'hF)
					next_state = KEY_PRESSED;
				else
					next_state = NO_KEY_PRESSED;
		endcase
	end
	
	always@ (posedge clk) begin		//输出方程，按键识别
		case(next_state)
			KEY_PRESSED:
				case({C,R})
					8'b0111_1110 : key <= 4'h0;
					8'b0111_1101 : key <= 4'hA;//开始
					8'b0111_1011 : key <= 4'hB;//清零
					8'b0111_0111 : key <= 4'hC;//确认
				
					8'b1011_1110 : key <= 4'h7;
					8'b1011_1101 : key <= 4'h8;
					8'b1011_1011 : key <= 4'h9;
					8'b1011_0111 : key <= 4'hF;
				
					8'b1101_1110 : key <= 4'h4;
					8'b1101_1101 : key <= 4'h5;
					8'b1101_1011 : key <= 4'h6;
					8'b1101_0111 : key <= 4'hF;
				
					8'b1110_1110 : key <= 4'h1;
					8'b1110_1101 : key <= 4'h2;
					8'b1110_1011 : key <= 4'h3;
					8'b1110_0111 : key <= 4'hF;      
			endcase
		default: key <= 4'hD;
		endcase
	end
endmodule