class parent #(parameter n=2, type d_type=bit[2:0]);
  bit [n-1:0]data;
  d_type id;
  
  function void display();
    $display("Data= %0d ID= %0d",data,id);
  endfunction
endclass

module tb;
  parent p1;
  parent #(3,int)p2;
  initial begin
    p1=new();
    p2=new();
    
    p1.data=7;
    p1.id=15;
    
    p1.display();
    
    p2.data=7;
    p2.id=15;
    
    p2.display();
  end
endmodule
//Output
Data= 3 ID= 7
Data= 7 ID= 15
