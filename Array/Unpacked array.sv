module tb;
  shortint d[2][5];
  initial begin
    foreach(d[i])begin
      foreach(d[i][j])begin
        d[i][j]=$urandom;
        $display("d[%0d][%0d]=%0d",i,j,d[i][j]);
      end
    end
    $display("d=%p",d);
  end
endmodule
