//Downcasting: Parent handle → Child handle
class parent;
  bit [31:0] data;
  int id;
  
  function void display();
    $display("Base: Value of data = %0d, id = %0d", data, id);
  endfunction
endclass

class child extends parent;
   
  function void display();
    $display("Child: Value of data = %0d, id = %0d", data, id);
  endfunction
endclass

module class_example;
  initial begin
    parent p;
    child c;
    c = new();
        
    p = c;
    $cast(c,p);
    
    p.data = 10;
    p.id   = 1;
    
    c.data = 5;
    c.id   = 2;
    
    p.display();
  end
endmodule
//Output
Base: Value of data = 5, id = 2
