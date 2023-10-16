parameter NBITS_Saida = 4;
module contador(input logic clk, reset, 
                output logic [NBITS_Saida-1:0] Saida);

always_ff @(posedge reset or posedge clk) begin
    if(reset)
        Saida<=0;
    else if(Saida_up)
            Saida <= Saida+1;
        else 
            Saida<= Saida-1;
    end

endmodule