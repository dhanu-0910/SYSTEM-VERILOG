class packet;
  int a[string];
  function new();
    a["Dhanu"]=9;
    a["Lavi"]=28;
    a["Sowmi"]=10;
  endfunction
  
  function void display();
    foreach(a[i])begin
      $display("a[%s]=%0d",i,a[i]);
    end
    if(a.exists("Dhanu"))
  	  $display("Dhanu = %0d", a["Dhanu"]);
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
a[Dhanu]=9
a[Lavi]=28
a[Sowmi]=10
Dhanu = 9
