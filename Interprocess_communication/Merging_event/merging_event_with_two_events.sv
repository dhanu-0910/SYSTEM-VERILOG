module event_example();
  event e1,e2;
  
  task A();
    e1=e2;
    $display("Time= %0t: Process A: Before triggering event e1", $time);
    #10;
    ->e1;
    $display("Time= %0t: Process A: After triggering event e1", $time);
  endtask
  
  task trigger();
    $display("Time= %0t: Waiting for triggering event",$time);
    @(e2.triggered);
    $display("Time= %0t: Event e1,e2 is triggered using e3",$time);
  endtask    
    
  
  initial begin
    fork
      A();
      trigger();
    join
  end
endmodule
//Output
Time= 0: Process A: Before triggering event e1
Time= 0: Waiting for triggering event
Time= 10: Process A: After triggering event e1
Time= 10: Event e1,e2 is triggered using e3
