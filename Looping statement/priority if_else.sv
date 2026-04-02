module tb;
  int a=5;
  initial begin
    priority if(a==5)
      $display("a is 5");
    else if(a>3)
      $display("a is greater than 3");
    else
      $display("a is different");
  end
endmodule
