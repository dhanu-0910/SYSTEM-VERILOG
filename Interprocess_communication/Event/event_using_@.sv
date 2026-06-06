module event_example();
  event e1;
  
  task A();
    $display("Time= %0t: Before triggering event e1", $time);
    #20;
    @e1;
    $display("Time= %0t: After triggering event e1", $time);
  endtask
  
  task B();
    #10;
    $display("Time= %0t: waiting for the event e1", $time);
    #20;
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
Time= 10: waiting for the event e1
Time= 30: event e1 is triggered
Time= 30: After triggering event e1
