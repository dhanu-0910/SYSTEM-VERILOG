`include "adder_if.sv"
`include "driver.sv"

module tb;

  adder_if intf();

  adder dut(
    .a(intf.a),
    .b(intf.b),
    .sum(intf.sum)
  );

  driver drv;

  initial begin
    drv = new(intf);
    drv.run();
  end

endmodule
//Output
a=10 b=5 sum=15
