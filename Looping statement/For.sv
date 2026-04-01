module tb;
  bit clk;
  always #10 clk=~clk;
  initial begin
    bit [3:0]counter;
    for(counter=2;counter<10;counter+=2) begin
      @(posedge clk);
      $display("counter=%0d",counter);
    end
    $finish;
  end  
endmodule
//Another example
module tb;
  string a[5] = '{"dhanushiya", "lavanya", "sowmiya", "tamizh selvam", "sanjai"};
  initial begin
    for (int i = 0;  i < $size(a); i++) begin
      int j;
      j = a[i].len() - 1;   
      a[i][j] = "0" ; 
      $display("a[%0d]=%s", i, a[i]);
    end
  end
endmodule
//Another example
module tb;
  string a[5] = '{"dhanushiya", "lavanya", "sowmiya", "tamizh selvam", "sanjai"};
  initial begin
    for(int i=0;i<$size(a);i++) begin
      int j;
      j=a[i].len()-(i+1);
      if(j>=0)
        a[i][j]="0";
      $display("%s",a[i]);
    end
  end
endmodule
