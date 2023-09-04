module ULA #(parameter WIDTH = 8)
(
    input wire [WIDTH-1:0] A,
    input wire [WIDTH-1:0] B,
    input wire [1:0] opcode,
    output wire [WIDTH-1:0] Saida,
    output wire FLAG_O
);

    always_comb begin
        case (opcode)
            2'b00: begin // A AND B
                Saida <= A & B;
                FLAG_O <= 1'b0;
            end
            
            2'b01: begin // A OR B
                Saida <= A | B;
                FLAG_O <= 1'b0;
            end
            
            2'b10: begin // A + B
                Saida <= A + B;
                if ((A[WIDTH-1] && B[WIDTH-1] && !Saida[WIDTH-1]) || (!A[WIDTH-1] && !B[WIDTH-1] && Saida[WIDTH-1]))
                    FLAG_O <= 1'b1;
                else
                    FLAG_O <= 1'b0;
            end
            
            2'b11: begin // A - B
                Saida <= A - B;
                if ((A[WIDTH-1] && !B[WIDTH-1] && !Saida[WIDTH-1]) || (!A[WIDTH-1] && B[WIDTH-1] && Saida[WIDTH-1]))
                    FLAG_O <= 1'b1;
                else
                    FLAG_O <= 1'b0;
            end
            
            default: begin
                Saida <= 8'h00;
                FLAG_O <= 1'b0;
            end
        endcase
    end

endmodule