class seq_item;

  int cnt_arr[int];
  real weight_sum;

  function void randcase_testing();

    repeat(20) begin
      randcase
        1 : begin
              $display("Selected 1");
              cnt_arr[1]++;
            end

        4 : begin
              $display("Selected 4");
              cnt_arr[4]++;
            end

        6 : begin
              $display("Selected 6");
              cnt_arr[6]++;
            end

        9 : begin
              $display("Selected 9");
              cnt_arr[9]++;
            end
      endcase
    end

    foreach(cnt_arr[i])
      weight_sum += i;

    foreach(cnt_arr[i]) begin
      $display("--------------------------------");
      $display("Weight = %0d", i);
      $display("Count  = %0d", cnt_arr[i]);

      $display("Expected Probability = %0f",
                i/weight_sum);

      $display("Observed Probability = %0f",
                cnt_arr[i]/20.0);
    end

  endfunction

endclass


module tb;

  seq_item item;

  initial begin
    item = new();
    item.randcase_testing();
  end

endmodule
//Output
Selected 9
Selected 9
Selected 6
Selected 6
Selected 9
Selected 9
Selected 6
Selected 4
Selected 6
Selected 9
Selected 9
Selected 6
Selected 9
Selected 6
Selected 9
Selected 6
Selected 9
Selected 9
Selected 6
Selected 1
--------------------------------
Weight = 1
Count  = 1
Expected Probability = 0.050000
Observed Probability = 0.050000
--------------------------------
Weight = 4
Count  = 1
Expected Probability = 0.200000
Observed Probability = 0.050000
--------------------------------
Weight = 6
Count  = 8
Expected Probability = 0.300000
Observed Probability = 0.400000
--------------------------------
Weight = 9
Count  = 10
Expected Probability = 0.450000
Observed Probability = 0.500000
