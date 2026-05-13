class parent;
  int data;
  const int id;
  
  function new();
    id=1;
  endfunction
  function void display();
    $display("Data= %0d ID= %0d",data,id);
  endfunction
  
endclass

module tb;
  parent p;
  
  initial begin
    p=new();
    p.data=25;
    p.display();
    p.data=50;
    p.display();
  end
  
endmodule
//Output
Data= 25 ID= 1
Data= 50 ID= 1
