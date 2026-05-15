class packet;  
  randc bit [2:0] data;    
endclass


module tb;
  packet p;

  initial begin
    p = new();
    repeat(3) begin
      repeat(8) begin
        p.randomize();
        $display("data = %0d", p.data);
      end
      $display("------------------");
    end
  end

endmodule
//Output
data = 3
data = 0
data = 1
data = 7
data = 6
data = 5
data = 2
data = 4
------------------
data = 3
data = 0
data = 7
data = 1
data = 5
data = 2
data = 4
data = 6
------------------
data = 4
data = 5
data = 1
data = 0
data = 6
data = 7
data = 3
data = 2
------------------
