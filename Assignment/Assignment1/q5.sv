/*Declare a 3 element unpacked static array of type bit[9:0] named packed_arr.Write a statement to access bit index2 of the second element*/
module array;
  logic [9:0] packed_arr [0:2];
  initial begin
    packed_arr='{10,20,30};
    foreach(packed_arr[i]) begin
      $display("packed_arr[%0d]=%9b",i,packed_arr[i]);
    end
  end
endmodule
