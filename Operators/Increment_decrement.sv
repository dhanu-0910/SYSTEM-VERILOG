module tb;
  int a,b,c;
  initial begin
    a=5;
    b=++a;
    $display("a=%0d b=%0d",a,b);
    a=5;
    b=a++;
    $display("a=%0d b=%0d",a,b);
    a=5;
    b=--a;
    $display("a=%0d b=%0d",a,b);
    a=5;
    b=a--;
    $display("a=%0d b=%0d",a,b);
    a=5;
    b=10;
    c=++a + ++b;
    $display("a=%0d b=%0d c=%0d",a,b,c);
    a=5;
    b=10;
    c=a++ + b++;
    $display("a=%0d b=%0d c=%0d",a,b,c);
    a=5;
    b=10;
    c=a++ + ++b;
    $display("a=%0d b=%0d c=%0d",a,b,c);
    a=5;
    b=10;
    c=++a + b++;
    $display("a=%0d b=%0d c=%0d",a,b,c);
  end
endmodule
