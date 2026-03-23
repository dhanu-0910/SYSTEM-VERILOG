/*Declare two static arrays of type int:
int A[5] = '{1,2,3,4,5};
int B[5];
Copy all elements from array A to array B using direct assignment and display the contents of B.*/
module array;
  int a[5]='{1,2,3,4,5};
  int b[5];
  initial begin
    foreach(a[i]) begin
      b[i]=a[i];
      $display("b[%0d]=%0d",i,b[i]);
    end
  end
endmodule
 
