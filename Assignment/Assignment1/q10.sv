/*Given the following static array:
int scores[5] = '{10, 20, 30, 40, 50};
Write statements to:
 Access the third element
 Modify the last element to 60
 Display the updated array.*/
module array;
  int scores[5]='{10,20,30,40,50};
  initial begin
    $display("scores[%0d]=%0d",2,scores[2]);
    scores[4]=60;
    foreach(scores[i])begin
      $display("scores[%0d]=%0d",i,scores[i]);
    end
  end
endmodule
