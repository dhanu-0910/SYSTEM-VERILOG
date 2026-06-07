module sem();
  semaphore s=new(3);
  
  task write();
    s.get(1);
    $display("Time= %0t: Before writing starts",$time);
    #5;
    $display("Time= %0t: Writing completed",$time);
    s.put(1);
  endtask
  
  task read();
    s.get(2);
    $display("Time= %0t: Before reading starts",$time);
    #5;
    $display("Time= %0t: Reading completed",$time);
    s.put(2);
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
Time= 0: Before reading starts
Time= 5: Writing completed
Time= 5: Reading completed
