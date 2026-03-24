/*Declare a static array:
logic [7:0] arr[8];
Use a for loop to initialize each element with the value i + 8'h10. Display all elements.*/

module array;
  logic [7:0] arr[8];
  initial begin
  foreach(arr[i]) begin
    arr[i]=i+8'h10;
    $display("arr[%0d]=%0h (%0d)",i,arr[i],arr[i]);
  end
  end
endmodule
