module test;

  function void modify(int a);
    a = a + 10;
    $display("Inside Function: a = %0d", a);
  endfunction
  int x = 20;
  initial begin
    $display("Before Function Call: x = %0d", x);
    modify(x);
    $display("After Function Call: x = %0d", x);
  end

endmodule
//Output
Before Function Call: x = 20
Inside Function: a = 30
After Function Call: x = 20
