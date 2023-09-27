module ULA(input logic signed[7:0] A,B,
           input logic[1:0] F,
           output logic signed[7:0] SAIDA,
           output logic FLAG_O);

always_comb begin
    unique case(F)
        2'b00:
            begin 
            SAIDA <= A&B;
            FLAG_O <= 0;
            end
        2'b01:
            begin 
            SAIDA <= A|B;
            FLAG_O <= 0;
            end
        2'b10: 
            begin
            SAIDA <= A+B;
            if(A > 0 & B > 0 & SAIDA < 0 ||  A < 0 & B < 0 & SAIDA > 0)
                FLAG_O = 1;
            else 
                FLAG_O = 0;
            end
        2'b11: 
            begin
            SAIDA <= A-B;
            if(A > 0 & B < 0 & SAIDA < 0 || A < 0 & B > 0 & SAIDA > 0 )
                FLAG_O <= 1;
            else
                FLAG_O <= 0;
            end
    endcase
    

end

endmodule