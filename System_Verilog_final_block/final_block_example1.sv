module final_example;

  initial begin
    $display("Simulation Started");
    #10;
    $display("Simulation Ending");
    $finish;
  end

  final begin
    $display("Final Block Executed");
  end

endmodule

//Output
Simulation Started
Simulation Ending
Final Block Executed
