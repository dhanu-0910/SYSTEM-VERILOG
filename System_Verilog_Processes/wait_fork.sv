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
      
//Output
Simulation Started at 0
Task1 completed at 5
Task2 completed at 10
Task3 completed at 15
All Tasks Completed at 15
      
