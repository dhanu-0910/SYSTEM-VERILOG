module func;
  
  function compare(int a,int b);
    if(a<b)
      $display("A+B= %0d",a+b);
    else if(a>b)
      $display("A-B= %0d",a-b);
    else
      $display("A*B= %0d",a*b);
  endfunction
  
  initial begin
    compare(10,5);
    compare(5,10);
    compare(10,10);
    compare(5,5);
    compare(15,10);
    compare(10,15);
  end
  
endmodule

//Output

A-B= 5
A+B= 15
A*B= 100
A*B= 25
A-B= 5
A+B= 25
