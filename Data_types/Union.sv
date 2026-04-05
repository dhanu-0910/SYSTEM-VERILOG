module tb;
  union {
    int a;        
    bit [31:0] b;        
  } u;
  initial begin
    u.a = -1;
    $display("a = %0d", u.a);
    $display("b = %0h", u.b);
    u.b = 32'h0000000F;
    $display("a = %0d", u.a);
    $display("b = %0h", u.b);
  end
endmodule
