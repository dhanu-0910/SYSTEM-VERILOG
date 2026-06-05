module test;

  task automatic modify(ref int a, output int x);
    a = a + 10;      
    x = a;
    $display("Inside Task: a = %0d", a);
  endtask

  int a = 20;
  int x;

  initial begin
    $display("Before Task Call: a = %0d, x = %0d", a, x);

    modify(a, x);

    $display("After Task Call: a = %0d, x = %0d", a, x);
  end

endmodule
//Output
Before Task Call: a = 20, x = 0
Inside Task: a = 30
After Task Call: a = 30, x = 30
