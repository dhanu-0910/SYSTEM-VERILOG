module sem();
  semaphore s=new(1);
  
  task write();
    s.get();
    $display("Time= %0t: Before writing starts",$time);
    #5;
    $display("Time= %0t: Writing completed",$time);
    s.put();
  endtask
  
  task read();
    s.get();
    $display("Time= %0t: Before reading starts",$time);
    #5;
    $display("Time= %0t: Reading completed",$time);
    s.put();
  endtask
  
  initial begin
    
    fork
      write();
      read();
    join
    
  end
endmodule
//Output
Time= 0: Before writing starts
Time= 5: Writing completed
Time= 5: Before reading starts
Time= 10: Reading completed
