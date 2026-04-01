module tb;
  string a[5]='{"dhanu","lavi","sowmi","tamizh","sanjai"};
  initial begin
    for(int i=0;i<$size(a);i++) begin
      $display("a[%0d]=%s",i,a[i]);
      if(i==2)
        break;      
    end
  end
endmodule
