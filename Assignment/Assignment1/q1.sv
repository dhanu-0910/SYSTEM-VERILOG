/*Declare a static array of type int with 5 elements named arr.
Initialize it with the values {10, 20, 30, 40, 50} and display all elements using a for loop.*/
module static_array;
  int arr[5]='{10,20,30,40,50};
  initial begin
  foreach(arr[i]) begin
    $display("arr[%0d]=%0d",i,arr[i]);
  end
  end
endmodule
