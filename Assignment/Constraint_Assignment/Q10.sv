class packet;
  rand bit [3:0] addr;
  constraint addr_range { addr dist { 2 := 5, 7 := 8, 10 := 12 }; }
endclass

module constr_dist;
  initial begin
    packet pkt;
    pkt = new();
    $display("------------------------------------");
    repeat(10) begin
      pkt.randomize();
      $display("\taddr = %0d",pkt.addr);
    end
  end
endmodule

//Output

------------------------------------
	addr = 2
	addr = 10
	addr = 7
	addr = 10
	addr = 7
	addr = 7
	addr = 7
	addr = 10
	addr = 10
	addr = 7
