parameter tamanho = 3;
module detectorMensagem(input logic clk, reset, data_in,
                        output logic S);
    
enum logic[tamanho-1:0] {A,B,C,D,E} state;       

always_ff @(posedge clock) begin
    if (reset)
        state <= A;    
    else
      unique case (state)
        A:
            if(data_in == 0)
                state <=A;
            else
                state<=B;
        B:
            if(data_in == 0)
                state <=A;
            else
                state<=C;
        C:
            if(data_in == 0)
                state <=A;
            else
                state<=D;
        D:
            if(data_in == 0)
                state <=A;
            else
                state<=E;
        E:
             if(data_in == 0)
                state <=A;
            else
                state<=E;
      endcase    
end
    always_comb S<= (state == E);

endmodule






