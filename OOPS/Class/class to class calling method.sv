class product;
  int a,b;
  int p;
  function new(int x,int y);
    p=x*y;
  endfunction
  function void display();
    $display("Product=%0d",p);
  endfunction
endclass

class product1;
  product p1;
  task multiply();
    p1=new(5,6);
    p1.display();
  endtask
endclass

module tb;
  product1 p2;
  initial begin
    p2=new();
    p2.multiply();
  end
endmodule
//Output
Product=30
