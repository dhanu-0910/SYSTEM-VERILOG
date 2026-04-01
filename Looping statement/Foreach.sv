module tb;
   bit [7:0]array[8];
   initial begin
     foreach (array[i]) begin
       array[i]=i;
      end
     foreach (array[i]) begin
         $display ("array[%0d]=%0d",i,array[i]);
      end
   end
endmodule
//Another example (1D)
module tb;
  int a[5]='{1,2,3,4,5};
  int product=1;
  initial begin
    foreach(a[i]) begin
      $display("a[%0d]=%0d",i,a[i]);
    end
    foreach(a[i])begin
      product=product*a[i];
      $display("a[%0d]=%0d product=%0d",i,a[i],product);
    end
  end
endmodule

    
