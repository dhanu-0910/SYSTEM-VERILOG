module tb;
  string a[5]='{"dhanu","lavi","sowmi","tamizh","sanjai"};
  initial begin
    for(int i=0;i<$size(a);i++) begin      
      if(i==2)
        continue;    
      $display("a[%0d]=%s",i,a[i]);
    end
  end
endmodule
