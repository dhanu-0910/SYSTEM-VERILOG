//convert string "12345" to integer and display it by adding 100 to it
module tb;
  string a="12345";
  int b;
  initial begin
    b=a.atoi();
    $display("b=%0d",b+100);
  end
endmodule
