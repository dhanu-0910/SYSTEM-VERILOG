module tb;
  string a="Malayalam";
  string b="";
  int c;
  initial begin
    for(int i=a.len()-1;i>=0;i--)begin
      b={b,a[i]};
    end
    c=a.icompare(b);
    if(c==0)
      $display("Palindrome");
    else
      $display("Not a Palindrome");  
  end
endmodule
