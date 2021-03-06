module Extensor5(input  reg  [63:0]inSignal, 
		input reg [2:0]select,       
     		output reg  [63:0]outSignal		
		);

	always @(inSignal or select)begin
		if(select == 3'b000)begin //lb
			outSignal[7:0] <= inSignal[7:0];
			outSignal[63:8] <= {56{inSignal[7]}}; //nao torlle led
		end
		else if(select == 3'b001)begin //lh
			outSignal[15:0] <= inSignal[15:0];
			outSignal[63:16] <= {48{inSignal[15]}}; //nao torlle led
		end
		else if(select == 3'b010)begin //lw
			outSignal[31:0] <= inSignal[31:0];
			outSignal[63:32] <= {32{inSignal[31]}}; //nao torlle led
		end
		else if(select == 3'b011)begin //ld
			outSignal[63:0] <= inSignal[63:0];
		end
		else if(select == 3'b100)begin //lbu
			outSignal[7:0] <= inSignal[7:0];
			outSignal[63:8] <= {56'b0}; //nao torlle led
		end
		else if(select == 3'b101)begin //lhu
			outSignal[15:0] <= inSignal[15:0];
			outSignal[63:16] <= {48'b0}; //nao torlle led
		end
		else if(select == 3'b110)begin //lwu
			outSignal[31:0] <= inSignal[31:0];
			outSignal[63:32] <= {32'b0}; //nao torlle led
		end
	end
endmodule 