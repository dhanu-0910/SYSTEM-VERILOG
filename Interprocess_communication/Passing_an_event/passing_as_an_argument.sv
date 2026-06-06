module event_example();
  
  function A(event e1);
    $display("Time= %0t: Process A: Before triggering event e1",$time);
    ->>e1;
    $display("Time= %0t: Process A: After triggering event e1",$time);
  endfunction
  
  initial begin
    
    event e1;
    fork
      A(e1);
      begin
        $display("Time= %0t: Waiting for triggering event",$time);
        @(e1.triggered);
        $display("Time= %0t: Triggering event happended",$time);
      end  
    join
    
  end
endmodule
//Output
Time= 0: Process A: Before triggering event e1
Time= 0: Process A: After triggering event e1
Time= 0: Waiting for triggering event
Time= 0: Triggering event happended
