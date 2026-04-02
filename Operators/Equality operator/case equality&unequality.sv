module tb;
  integer a,b;
  initial begin
    a='b1x00;
    b='b1xx0;    
    if(a===b)begin
      $display("(a===b) = %0b",a===b);
    end
    else begin
      $display("False");
      $display("(a===b) = %0b",a===b);
    end    
    a='b1x10;
    b='b1x10;    
    if(a===b)begin
      $display("(a===b) = %0b",a===b);
    end
    else begin
      $display("(a===b) = %0b",a===b);
    end
    a='b1010;
    b='b1010;    
    if(a!==b)begin
      $display("(a!==b) = %0b",a!==b);
    end
    else begin
      $display("(a!==b) = %0b",a!==b);
    end
    a='b1010;
    b='b1000;
    if(a!==b)begin
      $display("(a!==b) = %0b",a!==b);
    end
    else begin
      $display("False");
      $display("(a!==b) = %0b",a!==b);
    end
    a='b1010;
    b='b1xx0;
    if(a!==b)begin
      $display("(a!==b) = %0b",a!==b);
    end
    else begin
      $display("False");
      $display("(a!==b) = %0b",a!==b);
    end
   end
endmodule
