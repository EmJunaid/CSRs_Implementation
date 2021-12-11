module mux #(parameter WIDTH = 8)
                      (input [WIDTH-1:0] PCF, PC_Int,
                       input              Int_sel,
                       output [WIDTH-1:0] PCInt);
     assign PCInt = Int_sel ?  PC_Int:PCF;
endmodule