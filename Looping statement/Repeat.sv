module tb;
  initial begin
    repeat(10) begin
      $display("Dhanushiya");
    end
  end
endmodule
//Another example
module tb;
  bit clk;
  always #10 clk=~clk;
  initial begin
    bit [2:0]a=6;
    repeat(a) begin
      @(posedge clk);
      $display("(%0t) Repeat loom has ended=%0d",$time,a);
    end
    $finish;
  end
endmodule
