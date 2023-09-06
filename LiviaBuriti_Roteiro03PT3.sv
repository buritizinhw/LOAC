module ULA(input logic signed[7:0] A,B,
           input logic[1:0] F,
           output logic signed[7:0] SAIDA,
           output logic FLAG_O);

always_comb begin
    unique case(F)
        2'b00: SAIDA <= A&B;
        2'b01: SAIDA <= A|B;
        2'b10: SAIDA <= A+B;
        2'b11: SAIDA <= A-B;
    endcase
end

endmodule