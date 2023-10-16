module camerasVigilancia(input logic clk, reset, 
                output logic [8:0] Saida);

always_ff @( posedge clk or posedge reset) begin
    if(reset)
            Saida<= 7;
        else 
            if(Saida[8])
                Saida<=7;
            else
                Saida<= Saida << 3;
    end

endmodule