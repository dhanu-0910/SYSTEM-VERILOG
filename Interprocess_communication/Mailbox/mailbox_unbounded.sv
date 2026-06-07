module mailbox_example();
  mailbox mb = new();
  int value;
  
  task A();
    repeat(10) begin
      value = $urandom_range(1, 150);
      mb.put(value);
      $display("Put data = %0d", value);
    end
    $display("----------------------");
  endtask

  task B();
    repeat(10) begin
      mb.get(value);
      $display("Retrieved data = %0d", value);
    end
  endtask
  
  initial begin
    fork
      A();
      B();
    join
  end
endmodule
//Output
Put data = 16
Put data = 10
Put data = 137
Put data = 79
Put data = 76
Put data = 143
Put data = 117
Put data = 65
Put data = 9
Put data = 147
----------------------
Retrieved data = 16
Retrieved data = 10
Retrieved data = 137
Retrieved data = 79
Retrieved data = 76
Retrieved data = 143
Retrieved data = 117
Retrieved data = 65
Retrieved data = 9
Retrieved data = 147
