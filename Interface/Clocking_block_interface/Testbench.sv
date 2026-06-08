module tb;

  logic clk;

  and_if vif(clk);

  and_gate dut(.a(vif.a),.b(vif.b),.y(vif.y));

  always #5 clk = ~clk;

  initial begin
    $display("And Gate using cloking block interface");
    clk = 0;

    @(vif.cb);
    vif.cb.a <= 0;
    vif.cb.b <= 0;

    @(vif.cb);
    $display("a=%0b b=%0b y=%0b",vif.cb.a, vif.cb.b, vif.cb.y);

    @(vif.cb);
    vif.cb.a <= 1;
    vif.cb.b <= 0;

    @(vif.cb);
    $display("a=%0b b=%0b y=%0b",vif.cb.a, vif.cb.b, vif.cb.y);

    @(vif.cb);
    vif.cb.a <= 1;
    vif.cb.b <= 1;

    @(vif.cb);
    $display("a=%0b b=%0b y=%0b",vif.cb.a, vif.cb.b, vif.cb.y);

    #10 $finish;
  end

endmodule
