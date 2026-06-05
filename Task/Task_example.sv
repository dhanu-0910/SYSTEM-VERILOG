module func;
  
  task compare(input int a, b, output int done);
    if(a<b)
      $display("A+B= %0d",a+b);
    else if(a>b)
      $display("A-B= %0d",a-b);
    else
      $display("A*B= %0d",a*b);
    #10;
    done=1;
  endtask
  
  initial begin
    bit done;
    
    compare(10,15,done);
    if(done)
      $display("Time= %0t -> A is less than B",$time);
    compare(15,10,done);
    if(done)
      $display("Time= %0t -> A is greater than B",$time);
    compare(10,10,done);
    if(done)
      $display("Time= %0t -> A is equal to B",$time);
    compare(10,20,done);
    if(done)
      $display("Time= %0t -> A is less than B",$time);
    
  end
  
endmodule
//Output
A+B= 25
Time= 10 -> A is less than B
A-B= 5
Time= 20 -> A is greater than B
A*B= 100
Time= 30 -> A is equal to B
A+B= 30
Time= 40 -> A is less than B
