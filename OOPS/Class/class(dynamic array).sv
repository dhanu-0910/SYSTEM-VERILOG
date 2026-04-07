class packet;
  int a[];
  function new();
    a=new[10];
  endfunction
  
  function display();
    foreach(a[i])begin
      a[i]=i*10;
      $display("a[%0d]=%0d",i,a[i]);
    end
  endfunction
endclass

module tb;
  packet p;
  initial begin
    p=new();
    p.display();
  end
endmodule
//Output
a[0]=0
a[1]=10
a[2]=20
a[3]=30
a[4]=40
a[5]=50
a[6]=60
a[7]=70
a[8]=80
a[9]=90
/*class packet;
  int count;
  function void counter();
    count = count+5;
  endfunction
endclass

module tb;
  packet a[];
  initial begin
    a=new[10];
    for(int i=0;i<10;i++) begin
      a[i] = new(); 
      a[i].count=i;
      a[i].counter();     
    end
    for(int i=0;i<10;i++) begin
      $display("a[%0d]=%0d", i, a[i].count);
    end
  end
endmodule
//Output
a[0]=5
a[1]=6
a[2]=7
a[3]=8
a[4]=9
a[5]=10
a[6]=11
a[7]=12
a[8]=13
a[9]=14*/
