module event_example();
  event e1;
  
  task A();
    $display("Time= %0t: Before triggering event e1", $time);
    wait(e1.triggered);
    $display("Time= %0t: After triggering event e1", $time);
  endtask
  
  task B();
    $display("Time= %0t: waiting for the event e1", $time);
    ->e1;
    $display("Time= %0t: event e1 is triggered", $time);
  endtask

  initial begin
    fork
      A();
      B();
    join
  end
endmodule
//Output
Time= 0: Before triggering event e1
Time= 0: waiting for the event e1
Time= 0: event e1 is triggered
Time= 0: After triggering event e1
