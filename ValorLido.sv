module ValorLido
	(input wire [63:0]outMem64,
	 input wire [63:0]outB,
         input wire [2:0]seletor,
	 output reg [63:0]outVal
	);

always_comb begin
	//$display("b = %d",outB);
	//$display("sel = %d",seletor);
	if(seletor == 3'b000)begin
		outVal = outB;
	end
	else if(seletor == 3'b001)begin
		outVal[31:0] = outB[31:0];
		outVal[63:32] = outMem64[63:32];
	end
	else if(seletor == 3'b010)begin
		outVal[15:0] = outB[15:0];
		outVal[63:16] = outMem64[63:16];
	end
	else if(seletor == 3'b011)begin
		outVal[7:0] = outB[7:0];
		outVal[63:8] = outMem64[63:8];
	end
	//$display("val = %d",outVal);
end
endmodule
