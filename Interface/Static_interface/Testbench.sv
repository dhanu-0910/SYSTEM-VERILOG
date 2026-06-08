module tb;

  adder_if intf();

  adder dut(.a(intf.a),.b(intf.b),.sum(intf.sum));

  initial begin
    intf.a = 5;
    intf.b = 3;
    #1;
    $display("sum = %0d", intf.sum);
  end

endmodule
