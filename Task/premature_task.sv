module func;
  
  task compare(input int a, b,output bit [1:0]done);
    if(a<b) begin
      done= 2'h1;
      $display("A+B= %0d",a+b);
    end
    else if(a>b) begin
      done= 2'h2;
      $display("A-B= %0d",a-b);
    end
    else begin
      done= 2'h3;
      $display("A*B= %0d",a*b);
    end
  endtask
  
  initial begin
    bit [1:0]done;
    int a,b;

    repeat (5) begin 
      a=$urandom_range(9,29);
      b=$urandom_range(9,29);
      $display("A= %0d  b= %0d",a,b);
      compare(a,b,done);
      if(done==2'h1)
        $display("a is greater than b");
      if(done==2'h2)
        $display("b is greater than a");
      if(done==2'h3)
        $display("a is equal to b");
      $display("----------------------------------");
    end
    end  
endmodule

//Output
A= 10  b= 18
A+B= 28
a is greater than b
----------------------------------
A= 21  b= 21
A*B= 441
a is equal to b
----------------------------------
A= 26  b= 26
A*B= 676
a is equal to b
----------------------------------
A= 10  b= 21
A+B= 31
a is greater than b
----------------------------------
A= 25  b= 12
A-B= 13
b is greater than a
----------------------------------
