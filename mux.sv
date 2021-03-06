module mux
	(input logic [63:0]a,
	input logic [63:0]b,
	input logic sel,
	output logic [63:0]f
	);

always @( a or b or sel)begin
 	if(sel) f = b;   	// reg A
 	else f = a;     	// PC 
end
endmodule
