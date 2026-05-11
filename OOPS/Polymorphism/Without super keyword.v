class parent;
  int a;
  function new(int a=3);
    this.a=a;
  endfunction
  function void display();
    $display("A=%0d",a);
  endfunction
endclass

class child extends parent;
  int a,b;
  function new(int a,int b);
    this.a=a;
    this.b=b;
  endfunction
  function void display();
    $display("A=%0d B=%0d",a,b);
  endfunction
endclass

module tb;
  parent p;
  child c;
  initial begin
    c=new(5,10);
    p=c;
    p.display();
    c.display();
  end
endmodule
//Output
A=3
A=5 B=10
