class Packet;
  rand bit [31:0] addr;
  constraint c_addr {
    addr inside {[0:100]};
  }
endclass

module tb;
  Packet p;
  initial begin
    p = new();
    p.c_addr.constraint_mode(0);
    if (p.randomize() with { addr > 200; }) begin
      $display("Randomization Successful");
      $display("addr = %0d", p.addr);
    end
    else begin
      $display("Randomization Failed");
    end
    $finish;
  end
endmodule

//OUTPUT

Randomization Successful
addr = 1491695641
