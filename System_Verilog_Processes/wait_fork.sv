module fork_join_example;

  initial begin
    $display("Simulation Started at %0t", $time);

    fork
      begin : task1
        #5;
        $display("Task1 completed at %0t", $time);
      end

      begin : task2
        #10;
        $display("Task2 completed at %0t", $time);
      end

      begin : task3
        #15;
        $display("Task3 completed at %0t", $time);
      end
    join_none
    wait fork;
    $display("All Tasks Completed at %0t", $time);

  end

endmodule
      
