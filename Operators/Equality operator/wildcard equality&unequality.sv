module equality_operators;
  integer a,b;
  initial begin
    //Only x,z,? in RHS is treated as wildcard i.e., it can be (0,1,x,z) and x in LHS is treated as x
    a='b1x00;
    b='b1xx0;    
    if(a==?b)begin
      $display("(a==?b) = %0b",a==?b);
    end
    else begin
      $display("(a==?b) = %0b",a==?b);
    end
    a='b1x0x;
    b='b1xx1;    
    if(a==?b)begin
      $display("(a==?b) = %0b",a==?b);
    end
    else begin
      $display("(a==?b) = %0b",a==?b);
    end
    a='b1x0?;
    b='b1zx0;    
    if(a==?b)begin
      $display("(a==?b) = %0b",a==?b);
    end
    else begin
      $display("(a==?b) = %0b",a==?b);
    end
    a='b1010;
    b='b1110;    
    if(a==?b)begin
      $display("(a==?b) = %0b",a==?b);
    end
    else begin
      $display("(a==?b) = %0b",a==?b);
    end
    a='b1010;
    b='b10x0;    
    if(a!=?b)begin
      $display("(a!=?b) = %0b",a!=?b);
    end
    else begin
      $display("(a!=?b) = %0b",a!=?b);
    end
    a='b1010;
    b='b1000;    
    if(a!=?b)begin
      $display("(a!=?b) = %0b",a!=?b);
    end
    else begin
      $display("(a!=?b) = %0b",a!=?b);
    end   
   end
endmodule
