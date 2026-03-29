typedef string s[];
module tb;
  s list[$];
  initial begin
    s fruits='{"leechi","banana","apple","mango","guava"};
    s vegetables='{"potato","carrot","beetroot"};
    list.push_back(fruits);
    list.push_back(vegetables);
    $display("list=%p",list);
    foreach(list[i])begin
      foreach(list[i][j]) begin
        $display("list[%0d][%0d]=%s",i,j,list[i][j]);
      end
    end
  end
endmodule
