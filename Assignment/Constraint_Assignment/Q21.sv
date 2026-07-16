// Write constraints to create a random array of integers such that array
// size is System Verilog Constraints 20 and the values of array are prime
// numbers.

class packet;
  rand int arr[];
  constraint c1 {
  arr.size==20;
  foreach(arr[i])
    arr[i] inside {2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53,59,61,
                   67,71,73,79,83,89,97};
  }
endclass

module tb;
  packet p;
  initial begin
    p=new();
    repeat(3) begin
      if(p.randomize()) begin
        $display("Array size=%0d ",p.arr.size);
        foreach(p.arr[i])
          $display("Array[%0d]= %0d",i,p.arr[i]);
      end
      else
        $display("Randomization Failed");
    end
  end
endmodule
  
    
      
