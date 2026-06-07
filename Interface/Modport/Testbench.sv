`include "and_if";

module tb;

  and_if vif();

  and_gate dut1(vif);

  initial begin
    $display("AND Gate using modport");
    vif.tb.a = 0; vif.tb.b = 0; #1;
    $display("a=%0b b=%0b y=%0b", vif.tb.a, vif.tb.b, vif.tb.y);

    vif.tb.a = 0; vif.tb.b = 1; #1;
    $display("a=%0b b=%0b y=%0b", vif.tb.a, vif.tb.b, vif.tb.y);

    vif.tb.a = 1; vif.tb.b = 0; #1;
    $display("a=%0b b=%0b y=%0b", vif.tb.a, vif.tb.b, vif.tb.y);
    
    vif.tb.a = 1; vif.tb.b = 1; #1;
    $display("a=%0b b=%0b y=%0b", vif.tb.a, vif.tb.b, vif.tb.y);
    

    $finish;
  end

endmodule
