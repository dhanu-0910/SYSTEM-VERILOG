class packet;
  int count;
endclass

module tb;
  packet p;

  initial begin
    p = new(); 
    p.count=5;// implicit constructor
    $display("count = %0d", p.count);
  end
endmodule
//Output
count=5
