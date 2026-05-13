class values;
  bit [15:0]length;
  bit [15:0]breadth;
  bit [15:0]side;

  function new();
    length = 10;
    breadth = 25;
    side = 5; 
  endfunction
  
  protected function void display();
    $display("Lenght = %0d and Breadth = %0d Side = %0d", length, breadth,side);
  endfunction
endclass

class area extends values;
  bit [31:0] area;
  
  task square;
    area = side * side;
    display();
    $display("Area of Square = %0d", area);
  endtask
  
  task rectangle;
    area = length * breadth;
    display();
    $display("Area of Rectangle = %0d", area);
  endtask
  
endclass

module class_example;
  area a;
  
  initial begin
    a = new();
    a.square();
    a.rectangle();
  end
  
endmodule
//Output
Lenght = 10 and Breadth = 25 Side = 5
Area of Square = 25
Lenght = 10 and Breadth = 25 Side = 5
Area of Rectangle = 250
