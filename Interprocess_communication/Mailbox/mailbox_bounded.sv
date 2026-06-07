module mail();
  mailbox m=new(3);
  int id;
  string name;
  int age;
  
  task A();
    id=1;
    name="Dhanushiya";
    age=22;
    m.put(id);
    m.put(name);
    m.put(age);
  endtask
  
  task B();
    m.get(id);
    m.get(name);
    m.get(age);
    $display("ID= %0d | Name= %s | Age= %0d",id,name,age);
  endtask
  
  initial begin
    
    fork
      A();
      B();
    join
    
  end
endmodule
//Output
ID= 1 | Name= Dhanushiya | Age= 22
