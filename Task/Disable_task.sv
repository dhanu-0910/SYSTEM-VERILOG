module tb;

  initial begin
    $display("Time=%0t : Calling task", $time);
    my_task();
    $display("Time=%0t : Back to initial block", $time);
  end

  task my_task;
    begin
      $display("Time=%0t : Task started", $time);

      #10;
      $display("Time=%0t : After 10ns", $time);

      disable my_task;

      #10;
      $display("Time=%0t : This statement will NOT execute", $time);
    end
  endtask

endmodule
//Output
Time=0 : Calling task
Time=0 : Task started
Time=10 : After 10ns
Time=10 : Back to initial block
