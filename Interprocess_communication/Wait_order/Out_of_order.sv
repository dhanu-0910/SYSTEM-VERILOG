module event_example();
  event e1,e2,e3;
  
  task A();
    $display("Time= %0t: Process A: Before triggering event e1", $time);
    #10;
    ->e1;
    $display("Time= %0t: Process A: After triggering event e1", $time);
  endtask
  
  task B();
    $display("Time= %0t: Process B: waiting for the event e1 using @", $time);
    #15;
    ->e2;
    $display("Time= %0t: Process B: event e1 is triggered using @", $time);
  endtask

  task C();
    $display("Time= %0t: Process C: waiting for the event e1 using wait(e1.triggered)", $time);
    #20;
    ->e3;
    $display("Time= %0t: Process C: event e1 is triggered using wait(e1.triggered)", $time);
  endtask
  
  task wait_process();
    $display("Time= %0t: Waiting for the events e1,e2,e3",$time);
    wait_order(e2,e3,e1)
    $display("Time= %0t: Events are triggered in correct order",$time);
    else
      $display("Time= %0t: Events are not triggered in correct order",$time);
  endtask
      
      
    
  
  initial begin
    fork
      A();
      B();
      C();
      wait_process();
    join
  end
endmodule
//Output
# KERNEL: Time= 0: Process A: Before triggering event e1
# KERNEL: Time= 0: Process B: waiting for the event e1 using @
# KERNEL: Time= 0: Process C: waiting for the event e1 using wait(e1.triggered)
# KERNEL: Time= 0: Waiting for the events e1,e2,e3
# KERNEL: Time= 10: Process A: After triggering event e1
# KERNEL: Time= 10: Events are not triggered in correct order
# KERNEL: Time= 15: Process B: event e1 is triggered using @
# KERNEL: Time= 20: Process C: event e1 is triggered using wait(e1.triggered)
