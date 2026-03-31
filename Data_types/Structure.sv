struct{
    int rollno;
    string name;
    int age;
  }student;
module tb;  
  initial begin
    student='{5,"Dhanushiya",23};
    $display("student=%p",student);
  end  
  initial begin
    student.rollno=5;
    student.name="Dhanushiya";
    student.age=23;
  $display("student=%p",student);
  end
endmodule
