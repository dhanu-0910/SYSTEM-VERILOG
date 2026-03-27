module tb;
  bit [2:0][3:0][7:0]d;
  initial begin;
    d[0]= 32'habcd_1234;
    d[1]= 32'hface_0504;
    d[2]= 32'hcafe_8910;
    $display("d = %h",d);
    foreach(d[i]) begin
      $display("d[%0d] = %h",i,d[i]);
      foreach(d[i,j])begin
        $display("d[%0d][%0d] = %h",i,j,d[i][j]);
      end
    end
    
    $display("\n***************************************\n");
    
    foreach(d[i]) begin
      $display("d[%0d] = %h",i,d[i]);
      foreach(d[i][j])begin
        $display("d[%0d][%0d] = %h",i,j,d[i][j]);
      end
    end
  end
endmodule
