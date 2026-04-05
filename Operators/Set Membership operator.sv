module set_membership;
  int a,b;
  int array[] = '{2,4,6,8};
  logic [3:0]d;
  initial begin
    a = 25;
    if (a inside {[20:25]})
      $display("Found");
    else
      $display("Not Found");    
    a = 15;
    if (a inside {[20:25]})
      $display("Found");
    else
      $display("Not Found"); 
    if (a inside {17,19,[20:25]})
      $display("Found");
    else
      $display("Not Found");    
    a = 11;b=15;
    if (a&&b inside {7,9,11,16,17,19})
      $display("Found");
    else
      $display("Not Found");    
    if (a||b inside {7,9,15,17,19})
      $display("Found");
    else
      $display("Not Found");
    if (4 inside {array})
      $display("Found");
    else
      $display("Not Found");
    a = 12;
    
  end
endmodule
