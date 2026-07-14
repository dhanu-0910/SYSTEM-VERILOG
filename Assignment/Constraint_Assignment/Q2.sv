class array_abc;
  rand int unsigned myarray[];
  constraint c_abc_val {
    myarray.size inside {[10:16]};
    foreach (myarray[i])
      if (i > 0)
        myarray[i] < myarray[i-1];
  }
  function void display();
    $display("\nArray Size = %0d", myarray.size);
    foreach(myarray[i])
      $display("myarray[%0d] = %0d", i, myarray[i]);
  endfunction
endclass

module tb;
  array_abc obj;
  initial begin
    obj = new();
    if(obj.randomize()) begin
      $display("Randomization Successful");
      obj.display();
    end
    else begin
      $display("Randomization Failed");
    end
    $finish;
  end
endmodule

//Output
Randomization Successful

Array Size = 12
myarray[0] = 3013447266
myarray[1] = 2407082800
myarray[2] = 2355700566
myarray[3] = 2318565296
myarray[4] = 2257462162
myarray[5] = 2228855835
myarray[6] = 2032661801
myarray[7] = 1948352152
myarray[8] = 1579890261
myarray[9] = 1554802577
myarray[10] = 1471341674
myarray[11] = 1321222944
