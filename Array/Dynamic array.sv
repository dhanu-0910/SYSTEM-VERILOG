//Dynamic w/o size defined
module tb;
  int a[]='{2,5,9,7,3,1,2,9,1,2,5,7};
  initial begin
    foreach(a[i])begin
      $display("a[%0d] = %0d",i,a[i]);
    end
  end
  //Dynamic with size
  int b[];
  int c[];
  byte d[];
  initial begin
    b= new [5];  
    b='{2,4,5,1,4,5,6};//size again updated as 7 here so i iterates from 0to6
    foreach(b[i])begin      
      $display("b[%0d] = %0d",i,b[i]);
    end
    //c=b;
    //$display("c=%p",c);
    c=new[b.size()+1](b);
    c[c.size()-1]=7;
    $display("c=%p",c);
    d=new[c.size()+1](d);
    $display("d=%p",d);
    foreach(d[i])begin
      d[i]=$random;
    end
    $display("d=%p",d);  
    $display("a_size=%0d b_size=%0d c_size=%0d d_size=%0d",a.size(),b.size(),c.size(),d.size());
    b.delete();
    $display("size=%0d",b.size());
  end
   
endmodule


  
