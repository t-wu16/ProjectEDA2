	module state_machine(clk,key_input,M1,M0,T1,T0);
	input clk;
	input [3:0] key_input;
	output reg [3:0] M1,M0,T1,T0;

	//分频
	reg [19:0]count;
	always @ (posedge clk)
		count <= count + 1'b1;
	wire state_clk = count[19];
		
	reg [6:0] Money,Time;
	reg [6:0] TD;
	
	always@ (current_state or Money) begin
		case(current_state)
			INITIAL:begin
				M1 <= 4'b1101;
				M0 <= 4'b1101;
			end
			default:begin
				M1 <= Money/10;
				M0 <= Money%10;
			end
		endcase
	end

	always@ (current_state or Time) begin
		case(current_state)
			INITIAL:begin
				T1 <= 4'b1101;
				T0 <= 4'b1101;
			end
			default:begin
				T1 <= Time/10;
				T0 <= Time%10;
			end
		endcase
	end
	
	//定义状态
	reg [2:0] current_state,next_state;
	parameter INITIAL = 0, START = 1, ONE = 2, TWO = 3, CHARGE = 4;
	
	always@ (posedge state_clk)		// 状态方程
		current_state <= next_state;
		
	always@ (current_state, key_input) begin 	//驱动方程
		case(current_state)
			INITIAL:
				if(key_input == 4'hA)
					next_state <= START;
				else
					next_state <= INITIAL;
			START:
				if(TD == 0)
					next_state <= INITIAL;
			   else if(key_input>=1 && key_input<=9)
					next_state <= ONE;
				else
					next_state <= START;
			ONE:
				case(key_input)
					4'hB: next_state <= START;	//清零
					4'hC: next_state <= CHARGE;//确认
					4'hF: next_state <= ONE;	//无效
					default: next_state <= TWO;//再输一位数
				endcase
			TWO:
				case(key_input)
					4'hC: next_state <= CHARGE;
					4'hB: next_state <= START;
					default: next_state <= TWO;
				endcase
			CHARGE:
				if(T1 == 4'h0 && T0 == 4'h0)	//充电完成
					next_state <= START;
				else
					next_state <= CHARGE;
			default:current_state <= INITIAL;
		endcase
	end
	
	//计算总钱数
	reg [3:0] prevkey;
	always@ (posedge state_clk) begin
		case(next_state)
			START:
				Money <= 0;
			ONE:
				if(key_input != prevkey && prevkey != 15 && prevkey != 13)	//输入从有效数值变为无效值1111时，Money菜改变
					Money <= prevkey;
			TWO:
				if(key_input != prevkey && prevkey != 15 && prevkey != 13)
				begin
					if(Money < 2)
						Money <= 10*Money + prevkey;
					else if(M1 == 0)
						Money <= 20;
				end
			CHARGE:
				Money <= Money;
		endcase
		prevkey <= key_input;
	end
	
	//充电倒计时
	reg [2:0] cnt;
	always@ (posedge state_clk) begin
		case(current_state)
			CHARGE:
				begin
					cnt <= cnt + 1'b1;		//降低计数频率
					if(cnt == 0) Time <= Time -1'b1;
				end
			default:
				Time <= 2*Money;
		endcase
	end
	
	//10s倒计时
	reg [3:0] cnt1;
	always@ (posedge state_clk) begin
		case(current_state)
			START:
				begin
					cnt1 <= cnt1 + 1'b1;
					if(cnt1 == 0) TD <= TD - 1'b1;
				end
			default:
				TD <= 111000;
		endcase
	end
	
endmodule