//Write a constraint for r&lt;t , s==r, t&gt;30,s&gt;25. Find values for r, s and t.

class abc;
  rand int r, s, t;
  constraint c1 {
    r < t;
    s == r;
    t > 30;
    s > 25;
  }
endclass

module tb;
  abc obj;
  initial begin
    obj = new();
    repeat (10) begin
      assert(obj.randomize())
        $display("r = %0d, s = %0d, t = %0d", obj.r, obj.s, obj.t);
      else
        $display("Randomization Failed");
    end

    $finish;
  end
endmodule
