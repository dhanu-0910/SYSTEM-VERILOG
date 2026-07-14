class ABC;
  rand int length;
  rand byte SA;
  constraint c_length { length inside {[1:64]}; }
  constraint c_sa     { SA inside {[1:16]}; }
endclass


module tb;
  ABC abc;
  initial begin
    abc = new();
    abc.c_length.constraint_mode(0);
    repeat(3) begin
    if (abc.randomize()) begin
      $display("Randomization Successful");
      $display("length = %0d", abc.length);
      $display("SA     = %0d", abc.SA);
    end
    else
      $display("Randomization Failed");
    end
    $finish;
  end
endmodule

//Output
Randomization Successful
length = -1783566328
SA     = 16
Randomization Successful
length = -1607702109
SA     = 8
Randomization Successful
length = -6148369
SA     = 11
