module event_example();
  event e1;
  
  task A();
    $display("@%0t: Process A: Before triggering event e1", $time);
    #10;
    ->e1;
    $display("@%0t: Process A: After triggering event e1", $time);
  endtask
  
  task B();
    $display("@%0t: Process B: waiting for the event e1 using @", $time);
    #20;
    @e1;
    $display("@%0t: Process B: event e1 is triggered using @", $time);
  endtask

  task C();
    $display("@%0t: Process C: waiting for the event e1 using wait(e1.triggered)", $time);
    #20;
    wait(e1.triggered);
    $display("@%0t: Process C: event e1 is triggered using wait(e1.triggered)", $time);
  endtask
  
  initial begin
    fork
      A();
      B();
      C();
    join
  end
endmodule
//Output
@0: Process A: Before triggering event e1
@0: Process B: waiting for the event e1 using @
@0: Process C: waiting for the event e1 using wait(e1.triggered)
@10: Process A: After triggering event e1
