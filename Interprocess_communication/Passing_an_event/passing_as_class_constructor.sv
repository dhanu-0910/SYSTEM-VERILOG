class transaction;
  event e1;
  
  function new(event e1);
    this.e1=e1;
  endfunction
  
  task A();
    $display("Time= %0t: Process A: Before triggering event e1",$time);
    #10;
    ->e1;
    $display("Time= %0t: Process A: After triggering event e1",$time);
  endtask
  
  task trigger();
    $display("Time= %0t: Waiting for triggering event",$time);
    @e1;
    $display("Time= %0t: Triggering event happended",$time);
  endtask
  
endclass

module event_example();
  transaction tr;
  event e1;
  
  initial begin
    
    tr=new(e1);
    fork
      tr.A();
      tr.trigger();
    join
    
  end
endmodule
//Output
Time= 0: Process A: Before triggering event e1
Time= 0: Waiting for triggering event
Time= 10: Process A: After triggering event e1
Time= 10: Triggering event happended
