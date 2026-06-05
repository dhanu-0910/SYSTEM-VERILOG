module simple_task;
  
  int a=5;
  int b=6;
  int c;
  
  task mul(input int a,b, output int c);
    #2;
    $display("Time=%0t | Multiplication c=%0d",$time,c);
    c=a*b;
    #4;
    $display("Time=%0t | Multiplication c=%0d",$time,c);
  endtask
  
  initial begin
    
    mul(a,b,c);
    
  end
  
endmodule
//Output
Time=2 | Multiplication c=0
Time=6 | Multiplication c=30
