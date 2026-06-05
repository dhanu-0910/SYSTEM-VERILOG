module task_example;
  int a, b;
  int out;
  
  
  task mul( output int out,input int a = 5, b = 6);
    out = a*b;
  endtask
  
  initial begin
    
    mul(out);
    $display("Task: out = %0d for default a and b", out);
    a = 7;
    b = 6;
    mul(out,a,b);
    $display("Task: out = %0d for a = %0d and b = %0d", out, a, b);
    
  end
endmodule
//Output
Task: out = 30 for default a and b
Task: out = 42 for a = 7 and b = 6
