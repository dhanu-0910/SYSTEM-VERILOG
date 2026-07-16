//Take a rand variable with array size 10,need to get unique values in each location without 
//using unique keyword and for any of 2 locations we need to get same value?

class packet;
  rand int arr[];
  constraint c_size {
    arr.size == 10;
  }
  constraint c_values {    
    foreach(arr[i])
      foreach(arr[j])
        if ((i < j) &&
            !((i == 2 && j == 7)))
          arr[i] != arr[j];
    arr[2] == arr[7];
  }
endclass


module tb;
  packet p;
  initial begin
    p = new();
    if(p.randomize()) begin
      foreach(p.arr[i])
        $display("arr[%0d] = %0d", i, p.arr[i]);
    end
  end
endmodule
