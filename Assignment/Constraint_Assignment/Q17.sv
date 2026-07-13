/*Write a constraint for count 0 to 40 [ skip 10,20,30,40]*/

class packet;
  rand int count;
  constraint c_count {
    count inside {[0:40]};
    !(count inside {10,20,30,40});
  }
endclass

module tb;
  packet p;
  initial begin
    p = new();
    repeat (20) begin
      assert(p.randomize());
      $display("count = %0d", p.count);
    end
  end
endmodule
