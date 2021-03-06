module mux4
	(input wire [63:0]a, [63:0]b, [63:0]c, [63:0]d, [63:0]e, [63:0]f, [63:0]g, [63:0]h,
	input wire [2:0]sel,
	output reg [63:0]outMux
	);

always @( a or b or c or e or sel)begin
 	if(sel == 3'b000) outMux = a;          // MemOut
 	else if(sel == 3'b001) outMux = b;     // AluOut 
 	else if(sel == 3'b010) outMux = c;     // 1
	else if(sel == 3'b011) outMux = d;     // 0
	else if(sel == 3'b100) outMux = e;
	else if(sel == 3'b101) outMux = f;
	else if(sel == 3'b111) outMux = g;
	else if(sel == 3'b110) outMux = h;		//PC Out
end
endmodule
