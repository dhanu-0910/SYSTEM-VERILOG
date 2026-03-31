module tb;
  typedef enum {dhanu,suji,swathi,aruna,kailash} names;
  names n1,n2;
  initial begin        
    n1=swathi;
    n2=dhanu;
    $display("name=%s",n2.name());
    $display("first=%0d",n2.first());
    $display("last=%0d",n1.last());
    $display("prev=%0d",n1.prev());
    $display("next=%0d",n2.next());
    $display("num=%0d",n1.num()); 
    n1=names'(4);
    $display("name=%s",n1.name());
    if(n1==dhanu | n1 == 4)
      $display("name is now=%s",n1.name());
  end
endmodule
//Another example
module enumeration;
  typedef enum{monday=1,tuesday,wednesday,thursday,friday,saturday,sunday}day;
  day d;
  initial begin
    for(int i = 1; i< 8; i++)begin
      d=day'(i);
      $display("day=%0d %0s",d,d.name());
    end
    end
endmodule

