//Verilog HDL for "BioZ_EMG_Model", "BioZ_AFE_DTBPSDM_MUX" "functional"


module BioZ_AFE_DTBPSDM_MUX (D0, D1, S, Y);

input wire D0, D1, S;
output reg Y;

always @(D0 or D1 or S) begin
	if(S) 
		Y= D1;
	else
		Y=D0;
end

endmodule
