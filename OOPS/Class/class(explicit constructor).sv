class packet;
  int count;

  function new(int c);
    count = c;
  endfunction
endclass


module tb;
  packet p;
  initial begin
    p = new(5);   // explicit constructor call
    $display("count = %0d", p.count);
  end
endmodule
//Output
count = 5
