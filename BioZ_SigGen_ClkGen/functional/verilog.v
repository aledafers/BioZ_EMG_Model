//Verilog HDL for "BioZ_EMG_Model", "BioZ_SigGen_ClkGen" "functional"


module BioZ_SigGen_ClkGen (
	input enable,
	input [3:0] Fsel,
	output reg clk);

	real FREQ = 31.25; // in kHz
	parameter PHASE = 0; // in degrees
	parameter DUTY = 50; // in percentage

	real clk_pd; // convert to ns
	real clk_on;
	real clk_off;
	real quarter;
	real start_dly;

	reg start_clk;

	initial begin
		clk_pd = 1.0/(FREQ * 1e3) * 1e9; // convert to ns
		clk_on =  DUTY/100.0 * clk_pd;
		clk_off = (100.0 - DUTY)/100.0 * clk_pd;
		quarter = clk_pd/4;
		start_dly = quarter * PHASE/90;

		clk <= 0;
		start_clk <= 0;
	end

	always @(Fsel,clk,FREQ) begin
		case (Fsel)
			4'b0000:	begin
					FREQ = 32000;    //  32 MHz
					clk_pd = 1.0/(FREQ * 1e3) * 1e9; // convert to ns
					clk_on =  DUTY/100.0 * clk_pd;
					clk_off = (100.0 - DUTY)/100.0 * clk_pd;
					quarter = clk_pd/4;
					start_dly = quarter * PHASE/90;
					end

			4'b0001:	begin
					FREQ = 16000;    //  16 MHz
					clk_pd = 1.0/(FREQ * 1e3) * 1e9; // convert to ns
					clk_on =  DUTY/100.0 * clk_pd;
					clk_off = (100.0 - DUTY)/100.0 * clk_pd;
					quarter = clk_pd/4;
					start_dly = quarter * PHASE/90;
					end
			4'b0010:	begin
					FREQ = 8000;     //  8 MHz
					clk_pd = 1.0/(FREQ * 1e3) * 1e9; // convert to ns
					clk_on =  DUTY/100.0 * clk_pd;
					clk_off = (100.0 - DUTY)/100.0 * clk_pd;
					quarter = clk_pd/4;
					start_dly = quarter * PHASE/90;
					end
			4'b0011:	begin
					FREQ = 4000;     //  4 MHz
					clk_pd = 1.0/(FREQ * 1e3) * 1e9; // convert to ns
					clk_on =  DUTY/100.0 * clk_pd;
					clk_off = (100.0 - DUTY)/100.0 * clk_pd;
					quarter = clk_pd/4;
					start_dly = quarter * PHASE/90;
					end
			4'b0100:	begin
					FREQ = 2000;     //  2 MHz
					clk_pd = 1.0/(FREQ * 1e3) * 1e9; // convert to ns
					clk_on =  DUTY/100.0 * clk_pd;
					clk_off = (100.0 - DUTY)/100.0 * clk_pd;
					quarter = clk_pd/4;
					start_dly = quarter * PHASE/90;
					end
			4'b0101:	begin
					FREQ = 1000;     //  1 MHz
					clk_pd = 1.0/(FREQ * 1e3) * 1e9; // convert to ns
					clk_on =  DUTY/100.0 * clk_pd;
					clk_off = (100.0 - DUTY)/100.0 * clk_pd;
					quarter = clk_pd/4;
					start_dly = quarter * PHASE/90;
					end
			4'b0110:	begin
					FREQ = 500;      //  500 kHz (REFERENCE FOR THE PLL)
					clk_pd = 1.0/(FREQ * 1e3) * 1e9; // convert to ns
					clk_on =  DUTY/100.0 * clk_pd;
					clk_off = (100.0 - DUTY)/100.0 * clk_pd;
					quarter = clk_pd/4;
					start_dly = quarter * PHASE/90;
					end
			4'b0111:	begin
					FREQ = 250;      //  250 kHz
					clk_pd = 1.0/(FREQ * 1e3) * 1e9; // convert to ns
					clk_on =  DUTY/100.0 * clk_pd;
					clk_off = (100.0 - DUTY)/100.0 * clk_pd;
					quarter = clk_pd/4;
					start_dly = quarter * PHASE/90;
					end
			4'b1000:	begin
					FREQ = 125;      //  125 kHz
					clk_pd = 1.0/(FREQ * 1e3) * 1e9; // convert to ns
					clk_on =  DUTY/100.0 * clk_pd;
					clk_off = (100.0 - DUTY)/100.0 * clk_pd;
					quarter = clk_pd/4;
					start_dly = quarter * PHASE/90;
					end
			4'b1001:	begin
					FREQ = 62.5;     //  62.500 kHz
					clk_pd = 1.0/(FREQ * 1e3) * 1e9; // convert to ns
					clk_on =  DUTY/100.0 * clk_pd;
					clk_off = (100.0 - DUTY)/100.0 * clk_pd;
					quarter = clk_pd/4;
					start_dly = quarter * PHASE/90;
					end
			4'b1010:	begin
					FREQ = 31.25;    //  31.250 kHz
					clk_pd = 1.0/(FREQ * 1e3) * 1e9; // convert to ns
					clk_on =  DUTY/100.0 * clk_pd;
					clk_off = (100.0 - DUTY)/100.0 * clk_pd;
					quarter = clk_pd/4;
					start_dly = quarter * PHASE/90;
					end
			4'b1011:	begin
					FREQ = 15.625;   // 15.625 kHz
					clk_pd = 1.0/(FREQ * 1e3) * 1e9; // convert to ns
					clk_on =  DUTY/100.0 * clk_pd;
					clk_off = (100.0 - DUTY)/100.0 * clk_pd;
					quarter = clk_pd/4;
					start_dly = quarter * PHASE/90;
					end
			4'b1100:	begin
					FREQ = 7.8125;   //  7.8125 kHz 
					clk_pd = 1.0/(FREQ * 1e3) * 1e9; // convert to ns
					clk_on =  DUTY/100.0 * clk_pd;
					clk_off = (100.0 - DUTY)/100.0 * clk_pd;
					quarter = clk_pd/4;
					start_dly = quarter * PHASE/90;
					end
			4'b1101:	begin
					FREQ = 3.90625;  //  3.90625 kHz
					clk_pd = 1.0/(FREQ * 1e3) * 1e9; // convert to ns
					clk_on =  DUTY/100.0 * clk_pd;
					clk_off = (100.0 - DUTY)/100.0 * clk_pd;
					quarter = clk_pd/4;
					start_dly = quarter * PHASE/90;
					end
			4'b1110:	begin
					FREQ = 1.95215;  //  1.952125 kHz
					clk_pd = 1.0/(FREQ * 1e3) * 1e9; // convert to ns
					clk_on =  DUTY/100.0 * clk_pd;
					clk_off = (100.0 - DUTY)/100.0 * clk_pd;
					quarter = clk_pd/4;
					start_dly = quarter * PHASE/90;
					end
			4'b1111:	begin
					FREQ = 0.9765625; //   0.9765625 kHz
					clk_pd = 1.0/(FREQ * 1e3) * 1e9; // convert to ns
					clk_on =  DUTY/100.0 * clk_pd;
					clk_off = (100.0 - DUTY)/100.0 * clk_pd;
					quarter = clk_pd/4;
					start_dly = quarter * PHASE/90;
					end
			default:	begin
					FREQ = 31.25; //   31.25 kHz
					clk_pd = 1.0/(FREQ * 1e3) * 1e9; // convert to ns
					clk_on =  DUTY/100.0 * clk_pd;
					clk_off = (100.0 - DUTY)/100.0 * clk_pd;
					quarter = clk_pd/4;
					start_dly = quarter * PHASE/90;
					end
    endcase
	end

	always @(posedge enable or negedge enable) begin
		if(enable) begin
			#(start_dly) start_clk = 1;
		end else begin
			#(start_dly) start_clk = 0;
		end
	end

	always @(posedge start_clk) begin
		if (start_clk) begin
			clk = 1;
			while (start_clk) begin
				#(clk_on)  clk = 0;
				#(clk_off) clk = 1;
			end
			clk = 0;
		end
	end

endmodule
