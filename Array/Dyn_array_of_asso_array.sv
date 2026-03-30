module tb;
  int d[][string];
  initial begin
    d=new[2];
    d[0]='{"apple":1,"guava":5};
    d[1]='{"plum":2,"mango":4};
    foreach(d[i])begin
      foreach (d[i][j])begin
        $display("d[%0d][%s]=%0d",i,j,d[i][j]);
      end
    end
  end
endmodule
