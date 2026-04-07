module tb;
  string a="Dhanushiya";
  string b="";
  initial begin
    for(int i=a.len()-1;i>=0;i--)begin
      b={b,a[i]};
    end
    $display("b=%s",b);
  end
endmodule
