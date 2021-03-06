module labm9;
reg clk, INT;
reg [31:0] entryPoint;
wire [31:0] ins, rd2, wb;

yChip myChip(ins, rd2, wb, entryPoint, INT, clk);

initial
begin
	//------------------------------Entry point
	entryPoint = 128;
	INT = 1;
	#1;
	//------------------------------Run program
	repeat (43)
	begin
		//--------------------------Fetch an ins
		clk = 1;
		#1;
		INT = 0;
		clk = 0;
		#1;
		//--------------------------View the result
		$display("instruction = %h: rd2=%2d wb=%2d", ins, rd2, wb);
	end
	$finish;
end

endmodule
