class arithmetic;
  int p;
  int q;
  int r;
  function sum();
    r=p+q;
  endfunction
  function display();
    $display("Sum=%0d",r);
  endfunction
  function sum1(int p,int q);
    this.p=p;
    this.q=q;
    r=p+q;
  endfunction
endclass

module tb;
  arithmetic a1,a2;
  initial begin
    a1=new();
    a2=a1;
    a2.display();
    a1.p=4;
    a1.q=5;
    a2.sum();
    a2.display();
    a1.sum1(5,1);
    a2.display();
  end
endmodule
