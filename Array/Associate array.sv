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
  int d[int];
  initial begin
    int i;
    d[5]=900;
    d[2]=500;
    d[7]=300;
    d[10]=200;
    $display("d=%p",d);
    $display("d=%p",d.num());
    $display("d=%p",d.size());
    d.delete(2);
    $display("d=%p",d);
    $display("d=%p",d.exists(2));
    d.first(i);
    $display("d[%0d]=%0d",i,d[i]);
    d.last(i);
    $display("d[%0d]=%0d",i,d[i]);
    d.prev(i);
    $display("d[%0d]=%0d",i,d[i]);
    d.next(i);
    $display("d[%0d]=%0d",i,d[i]);    
  end  
endmodule
