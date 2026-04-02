module tb;
  int a,b;
  initial begin
    //Logical operator will produce x as output whenever it diagnose x in any one of the input in 4state datatype(integer) 
    //but if we give 2state datatype(int) it will make x as 0(default type) and check the equality. 
    a='b1x10;
    b='b1010;
    if(a==b)begin
      $display("(a==b) = %0b",a==b);
    end
    else begin
      $display("(a==b) = %0b",a==b);
    end
    a='b1x10;
    b='b1110;    
    if(a==b)begin
      $display("(a==b) = %0b",a==b);
    end
    else begin
      $display("(a==b) = %0b",a==b);
    end
    a='b1110;
    b='b1110;    
    if(a==b)begin
      $display("(a==b) = %0b",a==b);
    end
    else begin
      $display("(a==b) = %0b",a==b);
    end
    a='b1111;
    b='b1111;    
    if(a!=b)begin
      $display("(a!=b) = %0b",a!=b);
    end
    else begin
      $display("(a!=b) = %0b",a!=b);
    end
    a='b1100;
    b='b1010;    
    if(a!=b)begin
      $display("(a!=b) = %0b",a!=b);
    end
    else begin
      $display("(a!=b) = %0b",a!=b);
    end    
   end
endmodule
