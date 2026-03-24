/*Declare two static arrays
int a[5];
int b[3];
attempt to assign a=b; explain what happens if static arrays of different size are assigned in systemverilog*/
module array;
  int a[5]='{1,2,3,4,5};
  int b[3];
  initial begin
    b=a;
    $display("b[%0d]=%0p",$size(b),b);
  end
endmodule

Error: Array size doesn't match
