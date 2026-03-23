/*Declare an unpacked static array of type logic [7:0] with 4 elements.
Assign the following values:8'hA1, 8'hB2, 8'hC3, 8'hD4 Print all elements using a loop.*/
module unpaked;
  logic [7:0]arr[0:3];
  initial begin
    arr='{8'hA1,8'hB2, 8'hC3, 8'hD4};
    foreach(arr[i]) begin
      $display("arr[%0d]=%0h",i,arr[i]);
    end
  end
endmodule
