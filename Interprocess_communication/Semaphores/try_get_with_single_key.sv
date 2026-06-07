module semaphore_example();
  semaphore sem = new(1);
  
  task process_A();
    if (sem.try_get()) begin
      $display("Time= %0t: process_A: Key received",$time);

      $display("Time= %0t: process_A started",$time);
      #5;
      $display("Time= %0t: process_A completed",$time);

      sem.put();
    end
    else begin
      $display("Time= %0t: process_A: Key is not available",$time);
    end
  endtask
  
  task process_B();
    if (sem.try_get()) begin
      $display("Time= %0t: process_B: Key received",$time);

      $display("Time= %0t: process_B started",$time);
      #4;
      $display("Time= %0t: process_B completed",$time);

      sem.put();
    end
    else begin
      $display("Time= %0t: process_B: Key is not available",$time);
    end
  endtask

  initial begin
    fork
      process_A();
      process_B();
    join
  end
endmodule
//Output
Time= 0: process_A: Key received
Time= 0: process_A started
Time= 0: process_B: Key is not available
Time= 5: process_A completed
