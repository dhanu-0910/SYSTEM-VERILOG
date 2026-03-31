typedef struct{
    int rollno;
    string name;
    int age;
  }student;
module tb; 
  student s1,s2;
  initial begin
    s1='{5,"Dhanushiya",23};
    s2='{15,"Lavanya",24};
    $display("student=%p",s1);
    $display("student=%p",s2);
  end
  student a[int];
  initial begin
    a[3]='{1,"Sowmiya",20};
    a[5]='{3,"Tamizh Selvam",17};
    a[1]='{7,"Sanjai",23};
    foreach(a[i])begin
      $display("ROLL NO.=%0d NAME=%s AGE=%0d",a[i].rollno,a[i].name,a[i].age);
    end
  end
  student b[string];
  initial begin
    b["d"]='{8,"Bhavya",18};
    b["p"]='{4,"Sandhiya",20};
    b["b"]='{5,"Sanshika",10};
    foreach(b[i])begin
      $display("ROLL NO.=%0d NAME=%s AGE=%0d",b[i].rollno,b[i].name,b[i].age);
    end
  end
endmodule
