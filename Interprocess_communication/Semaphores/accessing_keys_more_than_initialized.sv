module semaphore_example();
  semaphore sem = new(3);
  
  task A();
    sem.get(3);
    $display("Time= %0t: process A is started",$time);
    #5ns;
    $display("Time= %0t: process A is completed",$time);
    sem.put(5);
  endtask
  
  task B();
    sem.get(5);
    $display("Time= %0t: process B is started",$time);
    #5ns;
    $display("Time= %0t: process B is completed",$time);
    sem.put(5);
  endtask
  
  task C();
    sem.get(6);
    $display("Time= %0t: process C is started",$time);
    #5ns;
    $display("Time= %0t: process C is completed",$time);
    sem.put(6);
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
Time= 0: process A is started
Time= 5: process A is completed
Time= 5: process B is started
Time= 10: process B is completed
