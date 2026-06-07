module mail();
  mailbox m=new(3);
  int id;
  string name;
  int age;
  int mark;
  
  task A();
    id=1;
    name="Dhanushiya";
    age=22;
    mark=95;
    m.put(id);
    $display("Put ID= %0d",id);
    m.put(name);
    $display("Put NAME= %s",name);
    m.put(age);
    $display("Put AGE= %0d",age);
    m.put(mark);
    $display("Put MARK= %0d",mark);
  endtask
  
  task B();
    m.get(id);
    $display("Get ID= %0d",id);
    m.get(name);
    $display("Get NAME= %s",name);
    m.get(age);
    $display("Get AGE= %0d",age);
    m.get(mark);
    $display("Get MARK= %0d",mark);
  endtask
  
  initial begin
    
    fork
      A();
      B();
    join
    
  end
endmodule
//Output
# KERNEL: Put ID= 1
# KERNEL: Put NAME= Dhanushiya
# KERNEL: Put AGE= 22
# KERNEL: Get ID= 1
# KERNEL: Get NAME= Dhanushiya
# KERNEL: Get AGE= 22
# KERNEL: Get MARK= 95
# KERNEL: Put MARK= 95
