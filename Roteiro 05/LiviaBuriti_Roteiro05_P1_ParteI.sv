parameter NBITS_COUNT = 4;
module contador(input logic clk, reset, count_up,
                output logic [NBITS_COUNT-1:0] Count);

always_ff @(posedge reset or posedge clk) begin
    if(reset)
        Count<=0;
    else if(count_up)
            Count <= Count+1;
        else 
            Count<= Count-1;
    end
endmodule