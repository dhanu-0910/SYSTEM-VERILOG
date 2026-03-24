/*Declare a static array of type byte with 6 elements.
Initialize the array with different values and display each element using a foreach loop.*/
module array;
  byte a[6];  
  initial begin
    a='{10,20,30,40,50,60};
    foreach (a[i]) begin
      $display("a[%0d]=%0d",i,a[i]);
    end
  end
endmodule
