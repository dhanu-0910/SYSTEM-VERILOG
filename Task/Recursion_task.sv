module task_example;

  task automatic fact_auto(input int n, output int result);
    int temp;
    if (n <= 1)
      result = 1;
    else begin
      fact_auto(n-1, temp);
      result = n * temp;
    end
  endtask

  task fact_static(input int n, output int result);
    int temp;
    if (n <= 1)
      result = 1;
    else begin
      fact_static(n-1, temp);
      result = n * temp;
    end
  endtask

  int res1, res2;

  initial begin
    fact_auto(5, res1);
    $display("Automatic Task Result = %0d", res1);

    fact_static(5, res2);
    $display("Static Task Result = %0d", res2);
  end

endmodule
//Output
Automatic Task Result = 120
Static Task Result = 1
