module tb;
  int a = 5;
  initial begin
    unique0 case (a)
      1: $display("ONE");
      2: $display("TWO");
      2: $display("THREE");      
    endcase
  end
endmodule
