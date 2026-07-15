class constant;
  rand bit [7:0] low, mid, high;
  constraint Const_1 {
    low < mid;
    mid < high;
  }
endclass

module tb;
  constant obj;
  initial begin
    obj = new();
    repeat (5) begin
      obj.randomize();
      $display("low=%0d  mid=%0d  high=%0d",obj.low, obj.mid, obj.high);
    end
    $finish;
  end
endmodule

//Output

low=141  mid=153  high=217
low=36  mid=64  high=108
low=159  mid=192  high=193
low=168  mid=184  high=215
low=120  mid=200  high=230
