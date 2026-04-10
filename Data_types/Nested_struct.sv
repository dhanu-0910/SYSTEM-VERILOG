module tb;
  struct{
  int rollno;
  string name;
  string section;
    struct{
      int age;
      int mark;
    }m;
  }s;
  initial begin
    s.rollno=5;
    s.name="Dhanu";
    s.section="A";
    s.m.age=23;
    s.m.mark=95;
    $display("Student Details");
    $display("Rollno=%0d Name=%s Section=%s Age=%0d Mark=%0d",s.rollno,s.name,s.section,s.m.age,s.m.mark);
    s='{2,"Dhivya Lakshmi","A",'{23,96}};
    $display("Rollno=%0d Name=%s Section=%s Age=%0d Mark=%0d",s.rollno,s.name,s.section,s.m.age,s.m.mark);
    s='{7,"Dhivya Bharathi","A",'{22,97}};
    $display("Rollno=%0d Name=%s Section=%s Age=%0d Mark=%0d",s.rollno,s.name,s.section,s.m.age,s.m.mark);
    s='{3,"Parvathy","B",'{23,95}};
    $display("Rollno=%0d Name=%s Section=%s Age=%0d Mark=%0d",s.rollno,s.name,s.section,s.m.age,s.m.mark);
    $display("s=%p",s);
  end
endmodule
//Output
Student Details
Rollno=5 Name=Dhanu Section=A Age=23 Mark=95
Rollno=2 Name=Dhivya Lakshmi Section=A Age=23 Mark=96
Rollno=7 Name=Dhivya Bharathi Section=A Age=22 Mark=97
Rollno=3 Name=Parvathy Section=B Age=23 Mark=95
s='{rollno:3, name:"Parvathy", section:"B", m:'{age:23, mark:95}}
