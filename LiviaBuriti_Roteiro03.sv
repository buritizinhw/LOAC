module circuit(input logic  [3:0]S0,S1,S2,S3,S4,S5,S6,S7,
               input logic[2:0]SEL,
               output logic [3:0]SAIDA,
               output logic [2:0]ID );
  
  always_comb begin
    unique case(SEL) 
        3'b000: 
        begin
            SAIDA <= S0;
            ID <= 3'b000;

        end
        3'b001: 
        begin
            SAIDA <= S1;
            ID <= 3'b001;
        end
        3'b010: 
        begin
            SAIDA <= S2;
            ID <= 3'b010;
        end
        3'b011: 
        begin
            SAIDA <= S3;
            ID <= 3'b011;
        end
        3'b100: 
        begin
            SAIDA <= S4;
            ID <= 3'b100;
        end
        3'b101: 
        begin
            SAIDA <= S5;
            ID <= 3'b101;
        end
        3'b110: 
        begin
            SAIDA <= S6;
            ID <= 3'b110;
        end
        3'b111: 
        begin
            SAIDA <= S7;
            ID <= 3'b111;
        end
    endcase   
  end;
  
endmodule