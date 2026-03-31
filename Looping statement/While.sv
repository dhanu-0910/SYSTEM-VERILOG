module tb;
  bit clk;
  always #10 clk=~clk;
  initial begin
    bit [3:0]counter;
    while (counter<10) begin
      @(posedge clk);
      counter=counter+1;
      $display("counter=%0d",counter);
    end
    $finish;
  end
endmodule
