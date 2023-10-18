module Memoria_ROM_4x4 (
    input wire [1:0] Addr, 
    output wire [3:0] Dout 
);

    reg [3:0] memoria[0:3];
    initial begin
        memoria[0] = 4'b0100;
        memoria[1] = 4'b1100;
        memoria[2] = 4'b0110;
        memoria[3] = 4'b0111;
    end
    always @(*) begin
        Dout = memoria[Addr];
    end

endmodule
