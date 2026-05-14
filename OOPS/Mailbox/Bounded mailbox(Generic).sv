module mail;
  mailbox mb=new(3);
  
  task process_A();
    int value=5;
    string name="Dhanu";
    int mark=95;
    int id=2;
    string gender="F";
    mb.put(value);
    $display("Put data= %0d",value);
    mb.put(name);
    $display("Put data= %0s",name);
    mb.put(mark);
    $display("Put data= %0d",mark);
    mb.put(id);
    $display("Put data= %0d",id);
    mb.put(gender);
    $display("Put data= %0s",gender);
  endtask
  
  task process_B();
    int value;
    string name;
    int mark;
    int id;
    string gender;
    mb.get(value);
    $display("Get data= %0d",value);
    mb.get(name);
    $display("Get data= %0s",name);
    mb.get(mark);
    $display("Get data= %0d",mark);
    mb.get(id);
    $display("Get data= %0d",id);
    mb.get(gender);
    $display("Get data= %0s",gender);
  endtask
  
  initial begin
    fork
      process_A();
      process_B();
    join
  end
endmodule
//Output
Put data= 5
Put data= Dhanu
Put data= 95
Get data= 5
Get data= Dhanu
Get data= 95
Get data= 2
Put data= 2
Put data= F
Get data= F
