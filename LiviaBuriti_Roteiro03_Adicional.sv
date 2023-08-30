// Write your modules here!
module  bit_de_paridade(input logic [7:0]palavra,
                        output paridade);
  
always_comb begin  
  paridade <= palavra[0] ^ palavra[1] ^ palavra[2] ^ palavra[3] ^ palavra[4] ^ palavra[5] ^ palavra[6] ^ palavra[7];
end
endmodule