module tb;
  int a[int];
  int b[string];
  string c[string];
  initial begin
    a='{1:5,2:9};
    b='{"dhanu":2,"abarna":5};
    c='{"paru":"dhivya","db":"9"};
    $display("a=%p",a);
    $display("b=%p",b);
    $display("c=%p",c);
  end
endmodule
