/*Declare two static arrays of type int with size [5].
Initialize the first array and copy elements to the second array using a for loop.
Display both arrays.*/
module array;
  int a[5]='{20,40,60,80,100};
  int b[5];
  initial begin
  foreach(a[i])begin
    b[i]=a[i];
    $display("b[%0d]=%0d",i,b[i]);
  end
  end
endmodule
