module tb;
  union packed {
    bit [31:0] a;
    bit [3:0][7:0] b;   
  } u;
  initial begin
    u.a = 32'h12345678;
    $display("Full integer = %0h", u.a);
    foreach (u.b[i]) begin
      $display("Byte[%0d] = %0h", i, u.b[i]);
    end 
    u.b[0] = 8'hAA;
    u.b[2]=8'hdd;
    $display("Full integer = %0h", u.a);
  end
endmodule
