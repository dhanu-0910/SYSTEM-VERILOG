virtual class parent;
  string name;
  int id;
  
  function void display();
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
    p.name="Dhanushiya";
    p.id=5;
    p.display();
  end
endmodule
//Number of argument should be same and for abstract class memory cannot be instantiated i.e., p=new() cannot be assigned.   
//Output
BASE-> Name=Dhanushiya ID=5
