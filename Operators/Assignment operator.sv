module tb;
  int a,b;
  logic unsigned [3:0]c,d;
  logic signed [3:0]p,q;
  initial begin
    a = 5;
    b = 9;
    $display("a=%0d b=%0d",a,b);
    a += b;
    $display("a=%0d ",a);
    $display("a=%0d b=%0d",a,b);
    a -= b;
    $display("a=%0d ",a);
    $display("a=%0d b=%0d",a,b);    
    a *= b;
    $display("a=%0d ",a);
    $display("a=%0d b=%0d",a,b);
    a /= b;
    $display("a=%0d ",a);
    $display("a=%0d b=%0d",a,b);
    a &= b;
    $display("a=%0d ",a);
    $display("a=%0d b=%0d",a,b);    
    a |= b;
    $display("a=%0d ",a);
    $display("a=%0d b=%0d",a,b);
    a ^= b;
    $display("a=%0d ",a);
    $display("a=%0d b=%0d",a,b);
    a=9;b=2;
    a >>= b;
    $display("a=%0d ",a);
    $display("a=%0d b=%0d",a,b);
    a=9;
    a <<= b;
    $display("a=%0d ",a);
    $display("a=%0d b=%0d",a,b); 
    //Arithmetic right and left shift operator for unsigned number work same as logical shift operator.
    c = 4'b1011;
    d =2;
    $display("c=%0d d=%0d",c,d);    
    c <<<= d;
    $display("c=%0d ",c);
    $display("c=%0d d=%0d",c,d);    
    c >>>= d;
    $display("c=%0d ",c);
    $display("c=%0d d=%0d",c,d);
    //If msb is 1 then 1 is filled for shifting in arithmetic right shift operator for signed number.
    p= 4'b1011;
    q=2;
    p >>>= q;
    $display("p=%0d ",p);
    $display("p=%0d q=%0d",p,q);
    //If msb is 0 then 0 is filled for shifting in arithmetic right shift operator for signed number.
    p=4'b0011;
    q=2;
    $display("p=%0d ",p);
    $display("p=%0d q=%0d",p,q);
    //Arithmetic left shift operator will also work same as logical left shift operator.
    p=4'b1110;
    q=4;
    p <<<= q;
    $display("p=%0d ",p);
    $display("p=%0d q=%0d",p,q); 
  end
endmodule
