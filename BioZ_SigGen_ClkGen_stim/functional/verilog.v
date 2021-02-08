//Verilog HDL for "BioZ_EMG_Model", "BioZ_SigGen_ClkGen_stim" "functional"


module BioZ_SigGen_ClkGen_stim (Fsel,enable);

output [3:0] Fsel;
output enable;

//parameter cycle = 1428; // 700 kHz
parameter cycle = 4500000; // 4.5 ms

parameter [3:0] freq_selection = 4'b0000;

reg enable;
reg [3:0] Fsel;


initial begin
	enable = 1;
	Fsel = freq_selection;

	#200 enable = 0;
	#400 enable = 1;
end 

//always begin
//	#(cycle) Fsel = Fsel - 1;
//end

endmodule
