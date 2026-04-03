module tb;
  int a,b;
  initial begin;
    a= 5;
    b = &a;
    $display("and=%0b",b);
    b = |a;
    $display("or=%0b",b);
    b = ^a;
    $display("xor=%0b",b);
    b = ~&a;
    $display("nand=%0b",b);
    b = ~|a;
    $display("nor=%0b",b);
    b = ~^a;
    $display("xnor=%0b",b);
    b = ^~a;
    $display("xnor=%0b",b); 
  end
endmodule
