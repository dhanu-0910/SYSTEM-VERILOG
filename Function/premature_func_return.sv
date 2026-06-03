module func;
  
  function bit[1:0] compare(int a,int b);
    if(a<b) begin
      return 2'h1;
      $display("A+B= %0d",a+b);
    end
    else if(a>b) begin
      return 2'h2;
      $display("A-B= %0d",a-b);
    end
    else begin
      return 2'h3;
      $display("A*B= %0d",a*b);
    end
    return 0;
  endfunction
  
  initial begin
    bit [1:0]d;
    int a,b;

    repeat (5) begin 
      a=$urandom_range(9,29);
      b=$urandom_range(9,29);
      $display("A= %0d  b= %0d",a,b);
      d=compare(a,b);
      if(d==2'h1)
        $display("a is greater than b");
      if(d==2'h2)
        $display("b is greater than a");
      if(d==2'h3)
        $display("a is equal to b");
      $display("----------------------------------");
    end
    end  
endmodule

//Output

A= 10  b= 18
a is greater than b
----------------------------------
A= 21  b= 21
a is equal to b
----------------------------------
A= 26  b= 26
a is equal to b
----------------------------------
A= 10  b= 21
a is greater than b
----------------------------------
A= 25  b= 12
b is greater than a
----------------------------------
