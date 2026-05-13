//Class used before its definition → typedef class needed
typedef class child;
class parent;
  int data;
  int id;
  child c=new();
  
  function void display();
    $display("Data= %0d ID= %0d",data,id);
    $display("Name= %s",c.name);
  endfunction
    
endclass

class child;
  string name;
  
endclass

module tb;
  parent p;
  
  initial begin
    p=new();
    p.data=25;
    p.id=2;
    p.c.name="Dhanushiya";
    p.display();
    p.data=50;
    p.id=3;
    p.c.name="Lavanya";
    p.display();
  end
  
endmodule
  //Output
Data= 25 ID= 2
Name= Dhanushiya
Data= 50 ID= 3
Name= Lavanya
