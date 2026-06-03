module tb;
  int l,b;
  int r;
  //Constant variable cannot be assigned outside of an initialization.
  function automatic int area(const ref int l,b);
    return l*b;
  endfunction
  
  initial begin
    l=10;
    b=15;
    r=area(l,b);
    $display("Area: l=%0d b=%0d Result=%0d",l,b,r);
  end
endmodule
//Output
Area: l=10 b=15 Result=150
