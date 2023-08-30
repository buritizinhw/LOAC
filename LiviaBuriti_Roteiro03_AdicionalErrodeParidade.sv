// Write your modules here!
module verificador_de_erro(input logic [7:0]palavra,input logic bitParidade,output logic erro);
  
	always_comb begin  
  		erro <= palavra[0] ^ palavra[1] ^ palavra[2] ^ palavra[3] ^ palavra[4] ^ palavra[5] ^ palavra[6] ^ palavra[7] ^ bitParidade;
  
	end
endmodule