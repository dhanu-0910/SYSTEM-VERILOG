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
