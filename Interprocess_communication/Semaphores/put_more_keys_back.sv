module semaphore_example();
  semaphore sem = new(3);
  
  task process();
    sem.get(3);
    $display("process is started");
    #5ns;
    $display("process is completed");
    sem.put(5);
  endtask

  initial begin
    process();
  end
endmodule
//Output
process is started
process is completed
