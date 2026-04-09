class Student;
  string section;
  function new(string s="A");
    section=s;
  endfunction
endclass

class Details;
  int rollno;
  string name;
  Student s1;
  function new(int r=2,string n="Dhanu");
    rollno=r;
    name=n;
    s1=new();
  endfunction
  function void display();
    $display("Section=%s Name=%s Rollno=%0d",s1.section,name,rollno);
  endfunction
endclass

module tb;
  Details d1,d2;
  initial begin
    d1=new();
    d1.display();
    d2=d1;
    d2.display();
    d1.rollno=5;
    d1.name="Suji";
    d1.display();
    d2.display();
    d1.s1.section="B";
    d1.display();
    d2.display();
  end
endmodule
//Output (Every object and handle share common memory)
Section=A Name=Dhanu Rollno=2
Section=A Name=Dhanu Rollno=2
Section=A Name=Suji Rollno=5
Section=A Name=Suji Rollno=5
Section=B Name=Suji Rollno=5
Section=B Name=Suji Rollno=5
