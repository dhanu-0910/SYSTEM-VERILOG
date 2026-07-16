// Write a single constraint to generate a random value for bit [8:0] variableinthe below range,
// 1-34, 127, 129-156, 192-202,257-260

class packet;
  rand bit [8:0] addr;
  constraint c_addr {
    addr inside {
      [1:34],
      127,
      [129:156],
      [192:202],
      [257:260]
    };
  }

endclass


module tb;
  packet p;
  initial begin
    p = new();
    repeat (10) begin
      if (p.randomize())
        $display("addr = %0d", p.addr);
    end
    $finish;
  end
endmodule
