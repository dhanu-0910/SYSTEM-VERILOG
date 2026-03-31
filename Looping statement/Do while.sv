module tb;
  bit clk;
  always #10 clk=~clk;
  bit [3:0]counter;
  initial begin
    do begin
      @(posedge clk);
      counter++;
      $display("counter=%0d",counter);
    end
    while(counter<10);
    $finish;
  end
endmodule
