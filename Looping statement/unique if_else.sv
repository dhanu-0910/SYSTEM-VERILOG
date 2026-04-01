module tb;
  int a=5;
  initial begin
    unique if(a!=5)
      $display("a is equal");
    else if(a<3)
      $display("a is greater than 3");
//     else
//       $display("a is different");
  end
endmodule
//Another example
module tb;
  int a=5;
  initial begin
    unique if(a==5)
      $display("a is equal");
    else if(a>3)
      $display("a is greater than 3");
    else
      $display("a is different");
  end
endmodule
             
