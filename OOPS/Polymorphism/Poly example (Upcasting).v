//Upcasting: Child object → Parent handle
// Only base class has class properties declared.
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
    
    p.data = 10;
    p.id   = 1;
    
    c.data = 5;
    c.id   = 2;
    
    p.display();
  end
endmodule

//Output
Base: Value of data = 5, id = 2
//Since variables are only declared in the base class, both classes will have access to the same memory location. 
//Hence, values changed by child class also reflect when it is accessed by the base class handle
