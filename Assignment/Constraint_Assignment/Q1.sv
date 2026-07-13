/*For a variable rand bit [31:0] addr,write a constraint to generate the address
range between 0-20 and 4020-4075?*/

class packet;
  rand bit [31:0] addr;
  constraint addr_range { addr inside {[0:20], [4020:4075]};}
endclass


module tb;
  packet pkt;
  initial begin
    pkt = new();
    repeat (20) begin
      assert(pkt.randomize())
        $display("Randomized Address = %0d", pkt.addr);
      else
        $display("Randomization Failed");
    end
    $finish;
  end
endmodule
