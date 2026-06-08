interface and_if(input logic clk);

  logic a, b;
  logic y;

  clocking cb @(posedge clk);
    output a, b;  
    input  y;     
  endclocking

endinterface
