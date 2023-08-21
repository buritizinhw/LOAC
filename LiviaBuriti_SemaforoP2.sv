module semaforoP2(input logic [2:0] ABC,
                  output logic VMA,VDA,VMB,VDB,VMC,VDC);
                  
    always_comb begin
        case(ABC) 
        3'b000: 
        begin
            VMA<= 0;
            VDA<= 1;
            VMB<= 0;
            VDB<= 0;
            VMC<= 0;
            VDC<= 0;
        end
        3'b001:
        begin
            VMA<= 0;
            VDA<= 0;
            VMB<= 0;
            VDB<= 0;
            VMC<= 0;
            VDC<= 1;
        end
        3'b010:
        begin
            VMA<= 0;
            VDA<= 0;
            VMB<= 0;
            VDB<= 1;
            VMC<= 0;
            VDC<= 0;
        end
        3'b011:
        begin
            VMA<= 0;
            VDA<= 0;
            VMB<= 0;
            VDB<= 1;
            VMC<= 0;
            VDC<= 0;
        end
        3'b100:
        begin
            VMA<= 0;
            VDA<= 1;
            VMB<= 0;
            VDB<= 0;
            VMC<= 0;
            VDC<= 0;
        end
        3'b110:
        begin
            VMA<= 0;
            VDA<= 1;
            VMB<= 0;
            VDB<= 0;
            VMC<= 0;
            VDC<= 0;
        end
        3'b111:
        begin
            VMA<= 0;
            VDA<= 1;
            VMB<= 0;
            VDB<= 0;
            VMC<= 0;
            VDC<= 0;
        end
        3'b101:
        begin
            VMA<= 0;
            VDA<= 0;
            VMB<= 0;
            VDB<= 0;
            VMC<= 0;
            VDC<= 1;
        end
        endcase
  end;
  
endmodule