virtual class parent;
  string name;
  int id;
  
  virtual function void display();
    $display("BASE-> Name=%0s ID=%0d",name,id);    
  endfunction
endclass

class child extends parent;
  string name;
  int id;
  
  function void display();
    $display("CHILD-> Name=%0s ID=%0d",name,id);
  endfunction
endclass

module tb;
  parent p;
  child c;
  initial begin
    c=new();
    p=c;
    c.name="Parvathy";
    c.id=15;
    p.name="Dhanushiya";
    p.id=5;
    p.display();
  end
endmodule
    
//Output
CHILD-> Name=Parvathy ID=15
