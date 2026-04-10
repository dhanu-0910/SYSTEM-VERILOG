class GrandParent;
  string Class;
  function new(string Class="10th");
    this.Class=Class;
  endfunction
endclass

class Parent extends GrandParent;
  string Section;
  function new(string Section="A");
    this.Section=Section;
  endfunction
endclass

class Child extends Parent;
  int Student_count;
  function new(int Student_count=50);
    this.Student_count=Student_count;
  endfunction
endclass

class GrandChild extends Child;
  int boys_count;
  int girls_count;
  function new(int boys_count=24,int girls_count=26);  
    this.boys_count=boys_count;
    this.girls_count=girls_count;    
  endfunction
  function void display();
    $display("Class = %s  Section = %s  Student_count = %0d  Boys_count = %0d  Girls_count = %0d",Class,Section,Student_count,boys_count,girls_count);
  endfunction
endclass

module tb;
  GrandChild c;
  initial begin
    c=new();
    c.display();
    c=new(20,15);
    c.Student_count=30;
    c.Section="B";
    c.Class="12th";
    c.display();
    c.boys_count=38;
    c.girls_count=22;
    c.Student_count=60;
    c.Section="A";
    c.Class="9th";
    c.display();
  end
endmodule
//Output
Class = 10th  Section = A  Student_count = 50  Boys_count = 24  Girls_count = 26
Class = 12th  Section = B  Student_count = 35  Boys_count = 20  Girls_count = 15
Class = 9th  Section = A  Student_count = 60  Boys_count = 38  Girls_count = 22
