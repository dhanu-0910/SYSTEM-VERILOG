/*Declare a 2D static array of type bit with size [4][8].Initialize all elements in row index 1 to 8'hFF
using a loop and display each element using $display.*/
module array;
  bit arr[4][8];
  int i,j;
  initial begin
    for (j=0;j<8;j++) begin
      arr[1][j]=1'b1;
    end
    foreach (arr[i, j]) begin
      $display("arr[%0d][%0d] = %b", i, j, arr[i][j]);
    end
    /*for(i=0;i<4;i++) begin
      for(j=0;j<8;j++) begin
        $display("arr[%0d][%0d]=%0d",i,j,arr[i][j]);
      end
    end*/
  end
endmodule
