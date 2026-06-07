module mailbox_example();
  mailbox #(string) mb = new(3);
  
  task process_A();
    string name = "Dhanu";
    mb.put(name);
    $display("Put data = %s", name);
    name = "Parvathy";
    mb.put(name);
    $display("Put data = %s", name);
    name = "Lakshmi";
    mb.put(name);
    $display("Put data = %s", name);
  endtask

  task process_B();
    string name;
    mb.get(name);
    $display("Retrieved data = %s", name);
    mb.get(name);
    $display("Retrieved data = %s", name);
    mb.get(name);
    $display("Retrieved data = %s", name);
  endtask
  
  initial begin
    fork
      process_A();
      process_B();
    join
  end
endmodule
//Output
Put data = Dhanu
Put data = Parvathy
Put data = Lakshmi
Retrieved data = Dhanu
Retrieved data = Parvathy
Retrieved data = Lakshmi
