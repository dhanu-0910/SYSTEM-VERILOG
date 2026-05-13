class students;
  string name;
  int id;
  function new(string name,int id);
    this.name=name;
    this.id=id;
    display();
  endfunction
  local function void display();
    $display("Student Details-> Name= %s ID= %0d",name,id);
  endfunction
endclass

module tb;
  students s;
  initial begin
    s=new("Dhanushiya",2);
    s=new("Abarna",1);
  end
endmodule
//Output
Student Details-> Name= Dhanushiya ID= 2
Student Details-> Name= Abarna ID= 1
