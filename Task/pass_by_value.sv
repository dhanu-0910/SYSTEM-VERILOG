module test;

  task modify(input int a, output int x);
    a = a + 10;
    x=a;
    $display("Inside Function: a = %0d", a);
  endtask
  
  int a = 20;
  int x;
  
  initial begin
    $display("Before Function Call: x = %0d", a);
    modify(a,x);
    $display("After Function Call: x = %0d", a);
  end

endmodule
//Output
Before Function Call: x = 20
Inside Function: a = 30
After Function Call: x = 20
