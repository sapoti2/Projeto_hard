
module shiftRA(input [63:0]rin,input [5:0]immed,output reg [63:0]rd);

always_comb begin
	rd = rin >>> immed;


end


endmodule 