//Verilog HDL for "BioZ_EMG_Model", "BioZ_AFE_Mixer_Digital" "functional"


module BioZ_AFE_Mixer_Digital (
input IF,
input IQ,
output wire BB
);

assign BB = IQ ~^ IF;

endmodule
