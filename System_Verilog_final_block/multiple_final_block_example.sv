module final_block_example;

  int read_count  = 0;
  int write_count = 0;

  initial begin
    repeat(3) begin
      #5;
      read_count++;
      $display("READ Transaction %0d at %0t",
                read_count, $time);
    end

    repeat(2) begin
      #5;
      write_count++;
      $display("WRITE Transaction %0d at %0t",
                write_count, $time);
    end

    $finish;
  end

  final begin
    $display("\n----- READ REPORT -----");
    $display("Total READ Transactions = %0d", read_count);
  end

  final begin
    $display("\n----- WRITE REPORT -----");
    $display("Total WRITE Transactions = %0d", write_count);
  end

  final begin
    $display("\n----- SIMULATION SUMMARY -----");
    $display("Total Transactions = %0d",
             read_count + write_count);
    $display("Simulation Ended Successfully");
  end

endmodule
//Output
READ Transaction 1 at 5
READ Transaction 2 at 10
READ Transaction 3 at 15
WRITE Transaction 1 at 20
WRITE Transaction 2 at 25

----- SIMULATION SUMMARY -----
Total Transactions = 5
Simulation Ended Successfully

----- WRITE REPORT -----
Total WRITE Transactions = 2

----- READ REPORT -----
Total READ Transactions = 3
