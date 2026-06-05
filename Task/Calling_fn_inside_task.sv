module func_from_task;

  task task_sum;
    #1;
    $display( "Time= %0t",$time);
    $display("Inside a task");
    #1;
    void'(function_sum());
  endtask

  function function_sum;
    $display( "Time= %0t",$time);
    $display( "Inside a function"); 
  endfunction
  
  initial begin
    task_sum;
  end

endmodule
//Output
Time= 1
Inside a task
Time= 2
Inside a function 
