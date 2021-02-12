//Verilog HDL for "BioZ_EMG_Model", "BioZ_Digital_stim" "functional"


module BioZ_Digital_stim (Fsel,StepNum,Gain_TCA_SigGen,CountEnable,Resetn,Clk_En,G_CTRL_TCA_AFE,G_CTRL_TIA_AFE,ADC_En,ADC_Start);

output [3:0] Fsel;
output StepNum,Gain_TCA_SigGen,CountEnable,Resetn,Clk_En,G_CTRL_TCA_AFE,G_CTRL_TIA_AFE,ADC_En,ADC_Start;

//parameter cycle = 1428; // 700 kHz
parameter cycle = 4500000; // 4.5 ms

parameter [3:0] freq_selection = 4'b0000;

reg StepNum,Gain_TCA_SigGen,CountEnable,Resetn,Clk_En,G_CTRL_TCA_AFE,G_CTRL_TIA_AFE,ADC_En,ADC_Start;
reg [3:0] Fsel;


initial begin
	StepNum = 0;
	Gain_TCA_SigGen = 1;
	CountEnable = 1;
	Fsel = freq_selection;
	Resetn = 1;
	Clk_En = 1;

	G_CTRL_TCA_AFE = 1;
	G_CTRL_TIA_AFE = 1;
	ADC_En = 1;
	ADC_Start = 1;

	#200 Resetn = 0; Clk_En = 0; ADC_En = 0; ADC_Start = 0;
	#400 Resetn = 1; Clk_En = 1; ADC_En = 1; ADC_Start = 1;
end 

always begin
	#(cycle) Fsel = Fsel - 1;
//	case (Fsel)
		//4'b1010: #(1e6/0.9765625) Fsel = Fsel - 1;
		//4'b1001: #(1e6/1.95215) Fsel = Fsel - 1;
		//4'b1000: #(1e6/3.90625) Fsel = Fsel - 1;
		//4'b0111: #(1e6/7.8125) Fsel = Fsel - 1;
		//4'b0110: #(1e6/15.625) Fsel = Fsel - 1;
		//4'b0101: #(1e6/31.25) Fsel = Fsel - 1;
		//4'b0100: #(1e6/62.5) Fsel = Fsel - 1;
		//4'b0011: #(1e6/125) Fsel = Fsel - 1;
		//4'b0010: #(1e6/250) Fsel = Fsel - 1;
		//4'b0001: #(1e6/500) Fsel = Fsel - 1;
		//4'b0000: #(1e6/1e3) Fsel = Fsel - 1;
//	endcase
end

endmodule
