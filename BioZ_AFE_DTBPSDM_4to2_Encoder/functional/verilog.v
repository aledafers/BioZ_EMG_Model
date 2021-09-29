//Verilog HDL for "BioZ_EMG_Model", "BioZ_AFE_DTBPSDM_4-2_Encoder" "functional"


module BioZ_AFE_DTBPSDM_4to2_Encoder  (in, outp, outn);

input [2:0] in;
output reg [1:0] outp;
output reg [1:0] outn;

always@(in) begin
	case(in)
		//0001
		3'b000:begin
			outp = 2'b00;
			outn = 2'b11;
		end
		//001x
		3'b001:begin
			outp = 2'b01;
			outn = 2'b10;
		end
		//01xx
		3'b010:begin
			outp = 2'b10;
			outn = 2'b01;
		end
		3'b011:begin
			outp = 2'b10;
			outn = 2'b01;
		end
		//1xxx
		3'b100:begin
			outp = 2'b11;
			outn = 2'b00;
		end
		3'b101:begin
			outp = 2'b11;
			outn = 2'b00;
		end
		3'b110:begin
			outp = 2'b11;
			outn = 2'b00;
		end
		3'b111:begin
			outp = 2'b11;
			outn = 2'b00;
		end
		default:$display("Error!");
	endcase
end

endmodule