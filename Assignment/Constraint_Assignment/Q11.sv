class ABC;
  rand int A;
  rand int B;
endclass


module tb;
  ABC obj;
  initial begin
    obj = new();
    if (obj.randomize() with { A > B; }) begin
      $display("Randomization Successful");
      $display("A = %0d", obj.A);
      $display("B = %0d", obj.B);
    end
    else
      $display("Randomization Failed");
    $finish;
  end
endmodule

//Output
Randomization Successful
A = 2112368267
B = 363917320
