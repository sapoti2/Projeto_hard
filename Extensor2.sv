module Extensor2 
    (input  wire  [31:0]inSignal,        
     output reg  [63:0]outSignal
    );

always @(inSignal)begin
	outSignal[1:0] <= 2'b0;
	outSignal[5:2] <= inSignal[11:8];
	outSignal[11:6] <= inSignal[30:25];
	outSignal[12] <= inSignal[7];
	outSignal[63:13] <= {51{inSignal[31]}};
end
endmodule
