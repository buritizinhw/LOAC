// Write your modules here!
module carroAlarme(input logic M,P1,P2,
                  output logic Alarme);
  
  always_comb Alarme <= (M & (P1|P2));
  
endmodule