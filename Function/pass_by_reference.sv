module tb;
  int l,b;
  int r;
  
  function automatic int area(ref int l,b);
    l=l*b;
    return l;
  endfunction
  
  initial begin
    l=10;
    b=15;
    r=area(l,b);
    $display("Area: l=%0d b=%0d Result=%0d",l,b,r);
  end
endmodule
//Output
Area: l=150 b=15 Result=150
