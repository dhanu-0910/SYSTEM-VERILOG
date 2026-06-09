module final_example;

  int tx_count = 0;

  initial begin
    repeat(5) begin
      #10;
      tx_count++;
      $display("Transaction %0d at time %0t",
                tx_count, $time);
    end

    $finish;
  end

  final begin
    $display("--------------------------------");
    $display("Total Transactions = %0d", tx_count);
    $display("Simulation Completed");
    $display("--------------------------------");
  end

endmodule
//Output
Transaction 1 at time 10
Transaction 2 at time 20
Transaction 3 at time 30
Transaction 4 at time 40
Transaction 5 at time 50
--------------------------------
Total Transactions = 5
Simulation Completed
--------------------------------
