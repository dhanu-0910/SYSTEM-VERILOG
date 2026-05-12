class parent;
  bit [31:0] data;
  int id;
  
  virtual function void display();
    $display("Base: Value of data = %0d and id = %0d", data, id);
  endfunction
endclass

class child extends parent;
  
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
    
    p.data = 5;
    p.id = 1;
    p.display();
  end
endmodule
//Number of argument specified should be same 
//Output
Child: Value of data = 5 and id = 1
