module tb;
  bit clk;
  always #10 clk=~clk;
  initial begin
    bit [3:0]counter;
    for(counter=2;counter<10;counter+=2) begin
      @(posedge clk);
      $display("counter=%0d",counter);
    end
    $finish;
  end  
endmodule
