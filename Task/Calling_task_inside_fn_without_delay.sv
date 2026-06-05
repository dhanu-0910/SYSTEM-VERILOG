module func_from_task;

  task task_sum;
    $display( "Time= %0t",$time);
    $display("Inside a task");
  endtask

  function function_sum;
    $display( "Time= %0t",$time);
    $display( "Inside a function"); 
    task_sum();
  endfunction
  
  initial begin
    function_sum;
  end

endmodule
//Output
Time= 0
Inside a function
Time= 0
Inside a task
