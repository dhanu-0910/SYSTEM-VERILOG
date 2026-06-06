module event_example();
  event e1;
  
  task A();
    $display("Time= %0t: Process A: Before triggering event e1", $time);
    #10;
    ->>e1;
    $display("Time= %0t: Process A: After triggering event e1", $time);
  endtask
  
  task B();
    $display("Time= %0t: Process B: waiting for the event e1 using @", $time);
    #10;
    @(e1.triggered);
    $display("Time= %0t: Process B: event e1 is triggered using @", $time);
  endtask

  task C();
    $display("Time= %0t: Process C: waiting for the event e1 using wait(e1.triggered)", $time);
    #10;
    wait(e1.triggered);
    $display("Time= %0t: Process C: event e1 is triggered using wait(e1.triggered)", $time);
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
Time= 0: Process A: Before triggering event e1
Time= 0: Process B: waiting for the event e1 using @
Time= 0: Process C: waiting for the event e1 using wait(e1.triggered)
Time= 10: Process A: After triggering event e1
Time= 10: Process B: event e1 is triggered using @
Time= 10: Process C: event e1 is triggered using wait(e1.triggered)
