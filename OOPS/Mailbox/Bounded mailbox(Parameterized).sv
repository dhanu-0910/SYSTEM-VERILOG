module mail;
  mailbox #(string)mb=new(3);
  
  task process_A();
    string firstname="Dhanushiya";
    string lastname="E";
    string gender="F";
    mb.put(firstname);
    $display("Put data= %0s",firstname);
    mb.put(lastname);
    $display("Put data= %0s",lastname);
    mb.put(gender);
    $display("Put data= %0s",gender);
  endtask
  
  task process_B();
    string firstname;
    string lastname;
    string gender;
    mb.get(firstname);
    $display("Get data= %0s",firstname);
    mb.get(lastname);
    $display("Get data= %0s",lastname);
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
Put data= Dhanushiya
Put data= E
Put data= F
Get data= Dhanushiya
Get data= E
Get data= F
