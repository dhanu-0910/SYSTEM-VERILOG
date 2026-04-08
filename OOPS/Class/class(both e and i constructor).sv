class packet;
  int count;
  function new(int c=0);
    count=c+10;
  endfunction
endclass


module tb;
  packet p1,p2;

  initial begin
    p1=new(); 
    p1.count=5;
    p2=new(5);
    $display("count = %0d", p1.count);
    $display("count = %0d", p2.count);
  end
endmodule
//Output
count = 5
count = 15
