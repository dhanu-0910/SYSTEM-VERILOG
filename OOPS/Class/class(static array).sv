class packet;
  int count;
  function new(int c);
    count=c;
  endfunction
endclass

module tb;
  packet a[10];
  initial begin
    for(int i=0;i<10;i++)begin
    a[i]=new(i*5);
  end
    for(int i=0;i<10;i++) begin
      $display("a[%0d]=%0d",i,a[i].count);
  end
  end
endmodule
//without constructor
class packet;
  int count;
  function void counter(int c);
    count = c;
  endfunction
endclass

module tb;
  packet a[10];
  initial begin
    for(int i=0;i<10;i++) begin
      a[i] = new();          
      a[i].counter(i*5);     
    end
    for(int i=0;i<10;i++) begin
      $display("a[%0d]=%0d", i, a[i].count);
    end
  end
endmodule
//Output
a[0]=0
a[1]=5
a[2]=10
a[3]=15
a[4]=20
a[5]=25
a[6]=30
a[7]=35
a[8]=40
a[9]=45
