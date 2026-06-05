module tb;
  int a[5];
  
  function int array(int i);
      return i*5;
  endfunction
  
  initial begin
    for(int i=0;i<5;i++)
      $display("array[%0d]= %0d",i,array(i));
  end
endmodule
//Output
array[0]= 0
array[1]= 5
array[2]= 10
array[3]= 15
array[4]= 20
