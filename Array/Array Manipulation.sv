module tb;
  int d[9]='{10,20,30,40,50,60,80,80,90};
  int p[$];
  int b[9]='{9,2,5,3,8,1,2,4,8};
  int c[2]='{5,2};
  initial begin
    p=d.find(x) with (x>50);
    $display("find=%p",p);
    p=d.find() with (item>50);
    $display("find=%p",p);
    p=d.find_index() with (item==50);
    $display("find_index=%p",p);
    p=d.find_first() with (item<50 && item>10);
    $display("find_first=%p",p);
    p=d.find_first_index() with (item<50 && item>10);
    $display("find_first_index=%p",p);
    p=d.find_last() with (item<50 && item>10);
    $display("find_last=%p",p);
    p=d.find_last_index() with (item<50 && item>10);
    $display("find_last_index=%p",p);
    $display("min=%p",d.min());
    p=d.max();
    $display("max=%p",p);
    p=d.unique();
    $display("unique=%p",p);
    p=d.unique() with (item>30);
    $display("unique_with=%p",p);
    d.reverse();
    p=d;
    $display("reverse=%p",p);
    d.sort();
    $display("sort=%p",d);
    b.rsort();
    $display("rsort=%p",b);
    b.rsort(x)with (x<3);
    $display("rsort=%p",b); 
    for(int i=0;i<3;i++)begin
      d.shuffle();
      $display("suffle:%0d = %p",i,d);
    end
    $display("sum= %p",b.sum());
    $display("product= %p",b.product());
    $display("and= %p",c.and());
    $display("or= %p",c.or());
    $display("xor= %p",c.xor());
  end
endmodule
