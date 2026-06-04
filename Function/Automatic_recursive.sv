module tb;
  int i;
  
  function automatic int fibonacci(int n);
    if(n<=1)
      return n;
    else
      return fibonacci(n-1)+fibonacci(n-2);
  endfunction
  
  initial begin
    for(i=0;i<8;i++)
      $display("fibonacci(%0d)= %0d",i,fibonacci(i));
  end
endmodule
//Output
fibonacci(0)= 0
fibonacci(1)= 1
fibonacci(2)= 1
fibonacci(3)= 2
fibonacci(4)= 3
fibonacci(5)= 5
fibonacci(6)= 8
fibonacci(7)= 13
