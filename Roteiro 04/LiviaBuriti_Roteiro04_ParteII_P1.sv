module Memoria_RAM_4x4 (
    input wire clk,
    input wire SEL,      
    input wire [1:0] Addr, 
    input wire [3:0] Din,  
    output wire [3:0] Dout 
);

    reg [3:0] mem[0:3];  

    always @(posedge clk) begin
        if (SEL == 1) 
        begin
            mem[Addr] <= Din;
        end 
        else 
        begin
            Dout <= mem[Addr];
        end
    end

endmodule
