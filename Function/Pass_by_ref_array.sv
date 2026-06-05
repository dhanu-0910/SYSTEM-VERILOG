module tb;
  
  int a[5];   
  int result;
  
  function automatic int array(ref int a[5]);
    for(int i=0;i<$size(a);i++)
      a[i]=i*5;
  endfunction

  initial begin
    
    result=array(a);
    foreach(a[i])
      $display("Array[%0d]= %0d",i,a[i]);
    
  end
  
endmodule
//Output
Array[0]= 0
Array[1]= 5
Array[2]= 10
Array[3]= 15
Array[4]= 20
