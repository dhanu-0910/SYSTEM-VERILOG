//Write a constraint to generate 18 zeros and no consecutive ones in a 32 bit Variable

class packet;
  rand bit [31:0] data;
  constraint c_data {
    $countones(data) == 14;
    foreach (data[i])
      if (i < 31)
        !(data[i] && data[i+1]);
  }
endclass

module tb;
  packet p;
  initial begin
    p = new();
    repeat (5) begin
      if (p.randomize()) begin
        $display("data = %032b", p.data);
        $display("No. of Ones  = %0d", $countones(p.data));
        $display("No. of Zeros = %0d\n", 32-$countones(p.data));
      end
    end
    $finish;
  end
endmodule
