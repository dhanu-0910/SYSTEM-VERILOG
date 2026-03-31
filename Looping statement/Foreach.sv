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

    
