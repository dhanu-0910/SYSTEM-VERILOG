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
    case (a) inside
      [0:5]   : $display("Low");
      [6:15]  : $display("Medium");
      [10:31] : $display("High");
    endcase
    d =4'b10x1;
    case(d) inside
      4'b1001: $display("Found");
      default : $display("Not Found");
    endcase
    
  end
endmodule
