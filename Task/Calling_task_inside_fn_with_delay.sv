module func_from_task;

  task task_sum;
    #5;
    $display( "Time= %0t",$time);
    $display("Inside a task");
  endtask

  function function_sum;
    $display( "Time= %0t",$time);
    $display( "Inside a function"); 
    fork
      task_sum();
    join_none
  endfunction
  
  initial begin
    function_sum;
  end

endmodule
//Output
Time= 0
Inside a function
Time= 5
Inside a task
