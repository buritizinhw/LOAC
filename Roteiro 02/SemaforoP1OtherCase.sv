module semaforoP1(input logic[1:0] AB,
                  output logic VMA,VDA,VMB,VDB);
                  
    always_comb begin
    case(AB)
    2'b00:
      begin
        VDA  <= 0;
        VMA <= 1;
        VDB <= 1;
        VMB <= 0;
      end
    2'b01:
      begin
        VDA  <= 0;
        VMA <= 1;
        VDB <= 1;
        VMB <= 0;
      end
    2'b10:
      begin
        VDA  <= 1;
        VMA <= 0;
        VDB <= 0;
        VMB <= 1;
      end
    2'b11:
      begin
        VDA  <= 1;
        VMA <= 0;
        VDB <= 0;
        VMB <= 1;
      end
    endcase
  end
  
endmodule