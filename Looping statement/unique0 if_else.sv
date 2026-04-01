module tb;
  int a = 5;
  initial begin
    unique0 if (a > 10)
      $display("A > 10");
    else if (a < 3)          //no error
      $display("A < 3");
    else if (a < 0)
      $display("A < 0");
  end
endmodule
//Another example
module tb;
  int a = 5;
  initial begin
    unique0 if (a > 10)
      $display("A > 10");
    else if (a > 3)         //error because more than one comdition is true
      $display("A < 3");
    else if (a > 0)
      $display("A < 0");
  end
endmodule
