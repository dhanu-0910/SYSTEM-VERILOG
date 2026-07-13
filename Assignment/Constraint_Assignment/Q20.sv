// write the constraint range between 1000 to 2000 (it won&#39;t repeat the
// value)

class packet;
  randc int value;
  constraint c1 {
    value inside {[1000:2000]};
  }
endclass


module tb;
  packet p;
  initial begin
    p = new();
    repeat (20) begin
      assert(p.randomize())
        $display("Generated Value = %0d", p.value);
      else
        $display("Randomization Failed");
    end
    $finish;
  end
endmodule
