class parent;
  bit [31:0] data;
  int id;
  
  virtual function void display();
     $display("Base: Value of data = %0d, id = %0d", data, id);
  endfunction
endclass

class child_A extends parent;
  function void display();
    super.display();
    $display("Child_A: Value of data = %0d, id = %0d", data, id);
  endfunction
endclass

class child_B extends parent;
  function void display();
    $display("Child_B: Value of data = %0d, id = %0d", data, id);
  endfunction
endclass

class child_C extends parent;
  function void display();
    $display("Child_C: Value of data = %0d, id = %0d", data, id);
  endfunction
endclass

module class_example;
  initial begin
    parent p_A, p_B, p_C;
    child_A c_A = new();
    child_B c_B = new();
    child_C c_C = new();
    
    p_A = c_A;
    p_B = c_B;
    p_C = c_C;
    
    c_A.data = 200;
    c_A.id   = 2;
    
    c_B.data = 300;
    c_B.id   = 3;
    
    c_C.data = 400;
    c_C.id   = 4;   
    
    p_A.display();
    p_B.display();
    p_C.display();
    
    p_A.data = 100;
    p_A.id   = 1;
    
    p_B.data = 100;
    p_B.id   = 1;
    
    p_C.data = 100;
    p_C.id   = 1;
    
    c_A.display();
    c_B.display();
    c_C.display();
    
  end
endmodule
//Output
Base: Value of data = 200, id = 2
Child_A: Value of data = 200, id = 2
Child_B: Value of data = 300, id = 3
Child_C: Value of data = 400, id = 4
Base: Value of data = 100, id = 1
Child_A: Value of data = 100, id = 1
Child_B: Value of data = 100, id = 1
Child_C: Value of data = 100, id = 1
