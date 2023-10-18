// Write your modules here!

module semaforoP1(input logic A,
                  output logic VMA,VDA,VMB,VDB);
                  
    always_comb begin
      if(A == 0)
      begin
        VDA  <= 0;
      end
      else
      begin
      VDA <= 1;
      end
    VMA <= ~VDA;
    VMB <= VDA;
    VDB <= ~VDA;
  end;
  
endmodule