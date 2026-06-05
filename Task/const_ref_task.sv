module task_example;
  int a, b;
  int out;
   
  task automatic mul(const ref int a, b, output int out);
    out = a*b;
  endtask
  
  initial begin
    a = 5;
    b = 6;

    mul(a,b, out);
    $display("Task: out = %0d, a = %0d and b = %0d", out, a, b);
  end
endmodule
//Output
Task: out = 30, a = 5 and b = 6
