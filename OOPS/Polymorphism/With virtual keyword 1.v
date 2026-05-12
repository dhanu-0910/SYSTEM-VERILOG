class parent;
  bit [31:0] data;
  int id;
  
  virtual function void display();
    $display("Base: Value of data = %0d and id = %0d", data, id);
  endfunction
endclass

class child extends parent;
  bit [31:0] data;
  int id;
  function void display();
    $display("Child: Value of data = %0d and id = %0d", data, id);
  endfunction  
endclass

module class_example;
  initial begin
    parent p;
    child c;
    c = new();
    
    p = c;
    c.data = 10;
    c.id = 2;
    
    p.data = 5;
    p.id = 1;
    p.display();
  end
endmodule
//Output
Child: Value of data = 10 and id = 2
