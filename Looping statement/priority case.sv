module tb;
  int a =7;
  initial begin
    priority case(a)
      7: $display("a=%0d",a);
      7: $display("a=%0d",a);
      5: $display("a=%0d",a);
      2: $display("a=%0d",a);
    endcase    
  end
endmodule
//Warning
module tb;
  int a =1;
  initial begin
    priority case(a)
      7: $display("a=%0d",a);
      7: $display("a=%0d",a);
      5: $display("a=%0d",a);
      2: $display("a=%0d",a);
    endcase    
  end
endmodule
