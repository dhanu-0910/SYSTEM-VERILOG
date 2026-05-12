virtual class shape;
  int area;

  pure virtual function void calculate();
  
  function void display();
    $display("Area = %0d", area);
  endfunction
endclass
    
class square extends shape;
  int side;

  function void calculate();
    side = 10;
    area = side * side;
  endfunction
endclass
    
class rectangle extends shape;
  int l, b;

  function void calculate();
    l = 10;
    b = 5;
    area = l * b;
  endfunction
endclass

module tb;
  square s;
  rectangle r;

  initial begin
    s = new();
    s.calculate();
    s.display();

    r = new();
    r.calculate();
    r.display();
  end
endmodule
    
//Output
Area = 100
Area = 50
